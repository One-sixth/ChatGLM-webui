# 新修改
改自 https://github.com/Akegarasu/ChatGLM-webui  
支持输出引导控制  
支持提前停止  
其他支持回车符作为结束符  
其他细微的修改  

chatglm-6b-v0_1 的内容来自 https://huggingface.co/THUDM/chatglm-6b/tree/v0.1.0 ，请自行下载 bin 后缀的权重放入里面  
chatglm-6b-v1_1 的内容来自 https://huggingface.co/THUDM/chatglm-6b/tree/v1.1.0 ，请自行下载 bin 后缀的权重放入里面  
其中 modeling_chatglm.py 文件做了修改，以支持 out_prefix，请自行与原始文件比较  
GLM 生成方式比较特殊，单纯修改提示词并不能对输出结果进行引导  
输出引导只修改了 stream_chat 方法，chat 方法未修改，所以只能支持流式输出  


启动方法  
参考目录内的 3. 8G显存-int8量化.bat 文件  
默认使用 v1.1.0 的权重目录

# 以下为原始

# ChatGLM-webui

A webui for ChatGLM made by THUDM. [chatglm-6b](https://huggingface.co/THUDM/chatglm-6b)

![image](https://user-images.githubusercontent.com/36563862/226985330-48e3b7f8-8c03-4778-af39-fd9b3a993d19.png)

## Features

- Original Chat like [chatglm-6b](https://huggingface.co/THUDM/chatglm-6b)'s demo, but use Gradio Chatbox for better user experience.
- One click install script (but you still must install python)
- More parameters that can be freely adjusted
- Convenient save/load dialog history, presets
- Custom maximum context length
- Save to Markdown
- Use program arguments to specify model and caculation accuracy

## Install

### requirements

python3.10

```shell
pip install torch==1.13.1+cu117 torchvision==0.14.1+cu117 --extra-index-url https://download.pytorch.org/whl/cu117
pip install --upgrade -r requirements.txt
```

or

```shell
bash install.sh
```

## Run

```shell
python webui.py
```

### Arguments

`--model-path`: specify model path. If this parameter is not specified manually, the default value is `THUDM/chatglm-6b`. Transformers will automatically download model from huggingface.

`--listen`: launch gradio with 0.0.0.0 as server name, allowing to respond to network requests

`--port`: webui port

`--share`: use gradio to share

`--precision`: fp32(CPU only), fp16, int4(CUDA GPU only), int8(CUDA GPU only)

`--cpu`: use cpu

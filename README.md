## 概述

疑问解答可以提 [issues](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/issues) 给我或者加入我的QQ群：1014806625（旧的群组因为开车太多被封了，惋惜！！！新群长期潜水会被移出群组）

[中文版](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/README.md)|[English](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/blob/master/README-en.md)

本文的目的是让Lenovo Legion Y7000 笔记本电脑系列尽量完美的使用上Mojave

注意：此系列笔记本电脑似乎没有WiFi白名单，因此您无需进行任何BIOS修改。

## 发布

最后发布的版本是 v3.0.0，前往 [release page](https://github.com/xiaoMGitHub/Lenovo_Y7000-Y530_Hackintosh/releases) 下载即可。

## 你需要什么
- Lenovo Legion Y7000系列笔记本
- 下载好的Mojave镜像，本人用的是Mojave 10.15.1 的镜像
- 8GB U盘
- 博通BCM94352z 无线网卡

## BIOS确保设置
- 启用UEFI启动。
- 禁用安全启动。
- SATA模式设置为AHCI。

## 正常工作的功能
- UEFI通过Clover启动。
- 内置键盘（带特殊功能键，小键盘已有驱动方法但驱动不稳定已舍弃）。
- 原生USB3 / USB2 
- AppleHDA原生音频，包括耳机。
- 内置摄像头。
- 原生电源管理。
- 电池状态。
- 背光控制（使用hotpatch打补丁实现Fn+功能键调节亮度）。
- 背光键盘。
- 核显驱动（独显已经 hotpatch 屏蔽）。
- 有线以太网卡。
- Mac App Store正常运行。
- CPU变频。
- 睡眠唤醒（鼠标，键盘、电源键唤醒均正常）。
- 无线网络（更换白果卡BCM943602cs）。
- 蓝牙（更换白果卡BCM943602cs）。
- 触控板。

## 不能正常使用的功能
- HDMI ，因为HDMI 端口连接到已禁用的Nvidia卡。

## 优化命令
```
sudo sh -c "$(curl -fsSL https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master/Script/Optimize.sh)"
```

## 关于捐赠

如果您认可我的工作，可以通过捐赠支持我后续的更新

| 微信                                                       | 支付宝                                               |
| ---------------------------------------------------------- | ---------------------------------------------------- |
| ![image](https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master/Screenshot/%E5%BE%AE%E4%BF%A1160.jpg) | ![image](https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master/Screenshot/%E6%94%AF%E4%BB%98%E5%AE%9D160.jpg) |



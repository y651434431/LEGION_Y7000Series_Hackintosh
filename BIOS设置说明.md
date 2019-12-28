## 概述
由于2018款的y7000、y7000p、y530的BIOS设置不兼容升级10.15.x，所以需要进入BIOS高级模式对相关设置进行修改，感谢[965987400abc](https://github.com/965987400abc)提供的BIOS修改方案。

## 进入BIOS高级模式（适用于任何版本的BIOS）
- 在 win/macOS 中同时按 FN + o + d （国外机友反馈只需要按 FN + o，自行测试）
- 重启后即可进入BIOS高级设置模式

## 修改BIOS设置
- Advanced > Debug settings > Kernel Debug Serial Port 修改为 Leagacy UART

## 保存重启

This is code designed for simulating continuum robots, implemented in MATLAB language without reliance on any third-party libraries, making it directly executable on the MATLAB platform. It serves dual purposes: it can solve for the end-effector pose of a multi-segment continuum robot given the lengths of the driving cables, and conversely, it can iteratively solve for the cable lengths required to achieve a desired end-effector pose using the Jacobian matrix method. For a detailed demonstration of its functionality and an analysis of the underlying principles, please refer to my Zhihu blog post at: https://zhuanlan.zhihu.com/p/638117473

It's worth noting that the current implementation has some inadequacies in the section of code pertaining to the driving cables, which may prevent the attainment of certain target poses through inverse kinematics calculations.

这是用来仿真连续体机器人的代码（可以给定驱动绳索的长度求解多节连续体机器人末端位姿，也可以给定末端位姿通过雅可比矩阵迭代求解驱动绳索长度），

1.使用matlab语言编写，不依赖任何第三方库，可以直接在matlab平台运行，其中代码可以完全对照《现代机器人学》

2.具体效果展示以及原理分析见我的知乎网站主页：https://zhuanlan.zhihu.com/p/638117473 

3.  可以使用本代码建立 连续体机器人模型

4.练习对于机器人运动学DH参数法，雅可比矩阵
5.当然，目前驱动绳索部分代码有一些不完善，导致有的目标位姿无法通过逆向运动学得到

6.如果有用希望   右上角点个star


实现效果举例
![Image Alt Text](https://github.com/JiaLongLiLi/continuum-robot/blob/main/images/github_readme_Page1.png)
![Image Alt Text](https://github.com/JiaLongLiLi/continuum-robot/blob/main/images/github_readme_Page2.png)
![Image Alt Text](https://github.com/JiaLongLiLi/continuum-robot/blob/main/images/github_readme_Page3.png)


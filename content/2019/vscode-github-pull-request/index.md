---
title: "Github Pull Request в VSCode"
description: "Github Pull Request — расширение для VSCode, которое упрощает работу с пул-реквестами"
keywords: ["vscode", "github", "vscode extension", "tools", "github pull request"]
date: 2019-04-18T16:23:45+07:00
tags: ["vscode"]
draft: false
---

В VSCode есть довольно много крутых расширений, и одно из них это [Github Pull Request](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github).

![GitHub Pull Request](https://code.visualstudio.com/assets/blogs/2018/09/10/github_pr_hero.png)

<!--more-->

Расширение позволяет:

1. Посмотреть pr по фильтрам - все, сделаны мной, назначены на меня, ожидают моего ревью.
2. Сделать чекаут pr в локальную ветку.
3. Смотреть дифф.
4. Комментировать и отвечать на комментарии, причем не только на pr в целом, но и на каждую строчку кода. Для этого в VSCode есть [Commenting API](https://github.com/Microsoft/vscode-extension-samples/tree/master/comment-sample).
5. Подтвержать и мержить pr.
6. Указывать теги и ревьюеров.
7. Работать с GitHub Enterprise.

{{< img "image.jpg" "">}}

Для сравнения, в [IDE от JetBrains](https://blog.jetbrains.com/idea/2018/10/intellij-idea-2018-3-eap-github-pull-requests-and-more) тоже есть возможность работать с pr, но функциональность сильно скуднее - нельзя комментировать, смотреть комментарии, подтвержать и мержить, неудобная фильтрация.

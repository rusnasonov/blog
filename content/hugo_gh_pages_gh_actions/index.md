---
title: "Как выложить свой сайт на Hugo в GitHub"
description: "Расскажу как собрать свой сайт при помощи Github Actions, и выложить на Github Pages."
keywords: ["hugo", "github", "github actions", "github pages", "хостинг", "хостинг блога"]
date: 2019-09-17
tags: ["receipt"]
draft: true
ogimage: "https://raw.githubusercontent.com/rusnasonov/blog/master/content/hugo_gh_pages_gh_actions/image.png"
---

Когда я захотел завести свою страницу в интернете, то сразу возник вопрос — а где ее разместить и как сделать? Вариантов несколько: платформа типа Blogger/LiveJournal, свой сервер и Wordpress/верстать самому/взять генератор сайтов. Готовые платформы не очень гибкие, а поддерживать решение на своем сервере не хочется. Да и свистелки мне были особо не нужны — только текст. В итоге я пришел к связке [Hugo](https://gohugo.io/) + [Github Pages](https://pages.github.com/) + [Github Actions](https://github.com/features/actions).

<!--more-->

![image](https://raw.githubusercontent.com/rusnasonov/blog/master/content/hugo_gh_pages_gh_actions/image.png)

В двух словах что есть что.

* [Hugo](https://gohugo.io/) — генератор статических сайтов, создает html на основе markdown. Работает очень шустро, и мне показался наиболее понятным из существующих генераторов.
* [Github Pages](https://pages.github.com/) — хостинг статических сайтов. Можно добавить `index.html` в свой GitHub репозиторий, и он автоматичеки будет доступен на `https://username.github.io/repo`. Можно привязать свой домен.
* [Github Actions](https://github.com/features/actions) — сервис для CI/CD. Может много чего, нам пригодится для автоматической сборки сайта.

Я не буду останавливаться на том, как установить и использовать Hugo, на сайте есть прекрасная документация.

### Настройка Hugo

У GitHub Pages есть два режима работы — хостить сайт из корня master ветки, из директории `/docs` в master ветке, или корня ветки gh-pages. Нам нужен второй режим, так как в корне будут лежать настройки и контент, а собранный сайт как раз таки в отдельно директории.  Для этого в `config.toml` нужно добавить настройку `publishDir = "docs"`. Если запустить команду `hugo`, то можно увидеть директорию `docs` с собранным html.

### Настройка GitHub Pages

Тут все просто, особенно если не нужен свой домен. Нужно [натыкать пару галочек](https://help.github.com/en/articles/configuring-a-publishing-source-for-github-pages) в настройках проекта. В случае если хочется использовать свое доменно имя, нужно будет у провайдера доменных имен прописать DNS сервер, все это хорошо описано в [документации](https://help.github.com/en/articles/using-a-custom-domain-with-github-pages). 

### Настройка GitHub Actions

На данный момент уже есть настроенный Hugo и GitHub pages. В принципе на этом можно и остановиться — написал статью, собрал сайт, закоммитил, запушил, и готов. Но хочется же все автоматизировать ;)

...
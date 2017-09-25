# chrisguindon.github.io
My personal website.

# solstice-hugo-starterkit

Solstice hugo starterkit, is a tool that allows you to quickly get started with Hugo. This tools is primarly aimed for Eclipse projects interested in migrating their website to Hugo.

This project was crated for [Bug 463327 - "Edit on Github" mechanism for creating project websites](https://bugs.eclipse.org/bugs/show_bug.cgi?id=463327).

## Requirements
* [Hugo](http://gohugo.io/)
* [Node.js](https://www.npmjs.com/)

### What is Hugo?

Hugo is a static site generator. This means that, unlike systems like WordPress, Ghost and Drupal, which run on your web server expensively building a page every time a visitor requests one, Hugo does the building when you create your content.

#### How to install

Please refer to the [Installing Hugo](http://gohugo.io/overview/installing/) documentation.

### What is Node.js
Node.js is an open source, cross-platform runtime environment for server-side and networking applications. 

#### How to install

You can install a pre-built version of node.js via the [downloads page](https://nodejs.org/download/).

## How to build

```shell
git clone git@github.com:EclipseFdn/solstice-hugo-starterkit.git
cd solstice-hugo-starterkit
npm install
npm run bower update
npm run grunt copy
```
## Distribute
If you added 'baseurl' in your configuration of your hugo site you can use the following cmd:

```shell
npm run grunt
```

Otherwise, please invoke the hugo command directly:

```shell
hugo --source=site --destination=../build/dist --baseUrl=$BASE_URL_OF_HUGO_SITE
```

## Development
The edit task includes a local server with live reload on http://127.0.0.1:8080.

```shell
npm run grunt edit
```
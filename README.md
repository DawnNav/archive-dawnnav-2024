# 黎明导航

**基于 Hugo-Webstack 网址导航网站**

fork from https://github.com/oulh/nav/

可以自己 fork 部署以及 pull request

这里介绍 Github Pages 的方法：

1. 导入或 Fork 本项目 

2. Github Pages 设置

   ![](https://raw.githubusercontent.com/oulh/nav/main/static/images/gh-pages.jpg)

3. Github Action 设置
   
   如果是导入的：Settings - Actions - General - Allow all actions and reusable workflows
   
   如果是Fork的：Actions - "I understand my workflows, go ahead and enable them"

4. 可自定义编辑的内容：
   
   - 主页面：/data/webstack.yml
   - 子页面：/content/xxx.md
   
   查看构建状态：Actions - All workflows
   
   如何希望提交后不触发构建，只需在 commit 信息中包含关键词：`[skip ci]`或`[no ci]`，包括[]符号。
   
5. 访问页面

   你的站点链接是：https://用户名.github.io/仓库名
   
6. pull request

## Cloudflare Pages 部署

这个仓库可以直接作为 Cloudflare Pages 的 Hugo 静态站点来源。推荐设置如下：

- Build command: `hugo --gc --minify`
- Build output directory: `public`
- Environment variable: 如需自定义域名，请把 `hugo.toml` 里的 `baseURL` 改成对应站点地址

## 管理员如何编辑内容

现在站点内容主要改这几个地方：

- 首页导航数据：`data/webstack.yml`
- 英文导航页：`content/en.md`
- 关于页：`content/about.md`
- 站点基础配置：`hugo.toml`

仓库里已经带了一个本地管理工具，适合管理员在本机改配置后再提交到 Git：

1. 双击 [start-admin.bat](start-admin.bat) 就能启动，它会自动安装依赖并打开管理页面
2. 如果你更习惯命令行，也可以先运行 `npm install`，再运行 `npm run admin`
3. 浏览器会自动打开 `http://localhost:3000/admin.html`
4. 在页面里选择中文或英文数据，修改后保存

这个工具适合编辑 `webstack.yml` 和导航页数据；如果要改 `hugo.toml` 这类纯文本配置，建议继续用编辑器直接修改，或者我可以再帮你补一个原始文本配置编辑页。

## 附：webstack.yml

可以复制以下配置，编辑 [webstack.yml](https://github.com/oulh/nav/blob/main/data/webstack.yml) 原有的内容，修改完可以问 gpt 你改的对不对。

title和url是必要属性，其他非必须。

```yaml
---
- taxonomy: 分类名称
  icon: fa-star
  links: 
    - title: 
      url: https://
      logo: 
      description: 
    - title: 
      url: 
      description: 
    - title: 
      url: 

          
- taxonomy: 
  icon: 
  list: 
    - term: 
      links:
        - title: 
          url: 
          description: 
    - term: 
      links:
        - title: 
          url: 
        - title: 
          url: 

- taxonomy: 其他链接
  icon: fa-link
  friend:
    - title: 
      url: 
      description: 
    - title: 
      url: 
      
---
```

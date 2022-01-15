��    V      �     |      x  �   y  �        �     �  ?   �  8   (	  �   a	  �   �	  �   �
  !   H  u   j     �  C  �  b   *  L   �  �   �  �   o  �   6  >     -   P  .   ~  +   �  '   �  �     $  �  w   �  F  &  �   m     g  �   v  �   v  E    �   Y  �   �  ?   �  1   �       G     c   ]  �   �  M   �  �   �  �   �  �  g  �     �   �     [   �   y   #   �      !     :!     T!     o!     �!     �!     �!     �!     �!     "  �   "     �"  �   �"  <   �#  ,  �#  �   %  
  �%  �   �&  '   ='  �   e'  �   "(    �(  �   �)  �   �*  F   *+     q+     �+  0   �+  u   �+  �   P,  �   -     �-  '   �-  )   �-     .     .  7  '.  }   _/  �   �/     �0     �0  K   �0  2    1  �   S1  �   �1  �   �2     F3  �   b3     �3    �3  K   �4  W   B5  �   �5  �   6  �   �6  8   k7  2   �7  6   �7      8  +   /8  �   [8    �8  _   �9  %  \:  �   �;     |<  �   �<  �   j=  6  �=  �   .?  �   �?  A   W@  +   �@     �@  U   �@  b   7A  �   �A  Y   uB  �   �B  �   �C  �  2D  �   �E  z   �F     1G  z   LG  $   �G     �G  '   H     3H     QH     kH     �H  #   �H     �H     �H     �H  j   I     I  �   �I  +   �J    �J  �   �K  �   �L  |   �M  &   
N  �   1N  �   �N  �   �O  �   �P  �   yQ  H   CR     �R     �R  /   �R  �   �R  �   jS  �   .T     �T  -   �T  )   �T     U     &U         3                 O   #       2                       1           <       (       U   ,           :           P          S   8   -   ;       Q   ?            %   !             F   A   C          
              R          /   *       N         @   4   I   7       '             9      K   	      &         J   "       =      G   L   V   T      +   5       )      $   M           B   6                                H       .           >         D          0       E        **NOTE**: Don't forget to change the dummy epoch value :code:`123456789` in the snippet above to the epoch value returned by the psql command. **Remember to fill in the password you generated rather than the word "secret".** After you have filled in the password and payload, the encoded data on the left will update. Copy the encoded token. :code:`exp` :code:`role` A request for the todos shows three of them, and all completed. After expiration, the API returns HTTP 401 Unauthorized: And now we have completed all three items in our todo list, so let's set :code:`done` to true for them all with a :code:`PATCH` request. As you begin the tutorial, pop open the project `chat room <https://gitter.im/begriffs/postgrest>`_ in another tab.  There are a nice group of people active in the project and we'll help you out if you get stuck. Back in the terminal, let's use :code:`curl` to add a todo. The request will include an HTTP header containing the authentication token. Bonus Topic: Immediate Revocation By the end of this tutorial you'll have a working database, PostgREST server, and a simple single-user todo list API. Claim Clients authenticate with the API using JSON Web Tokens. These are JSON objects which are cryptographically signed using a password known to only us and the server. Because clients do not know the password, they cannot tamper with the contents of their tokens. PostgREST will detect counterfeit tokens and will reject them. Connect to the SQL console (psql) inside the container. To do so, run this from your command line: Copy the updated token as before, and save it as a new environment variable. Currently our authentication token is valid for all eternity. The server, as long as it continues using the same JWT password, will honor the token. Epoch time is defined as the number of seconds that have elapsed since 00:00:00 Coordinated Universal Time (UTC), January 1st 1970, minus the number of leap seconds that have taken place since then. Even with token expiration there are times when you may want to immediately revoke access for a specific token. For instance, suppose you learn that a disgruntled employee is up to no good and his token is still valid. Expiration timestamp for token, expressed in "Unix epoch time" First make a new schema and add the function: Go ahead and make a new token with the payload Go back to jwt.io and change the payload to How to create a token at https://jwt.io If Docker is not installed, you can get it `here <https://www.docker.com/get-started>`_. Next, let's pull and start the database image: If everything is working correctly it will print out its version and information about configuration. You can continue to run this binary from where you downloaded it, or copy it to a system directory like :code:`/usr/local/bin` on Linux so that you will be able to run it from any directory. If the PostgREST server is still running from the previous tutorial, restart it to load the updated configuration file. If you're already familiar with using PostgreSQL and have it installed on your system you can use the existing installation (see :ref:`pg-dependency` for minimum requirements). For this tutorial we'll describe how to use the database in Docker because database configuration is otherwise too complicated for a simple tutorial. In :ref:`tut0` we created a read-only API with a single endpoint to list todos. There are many directions we can go to make this API more interesting, but one good place to start would be allowing some users to change data in addition to reading it. Interpretation It's a good practice to create a dedicated role for connecting to the database, instead of using the highly privileged ``postgres`` role. So we'll do that, name the role ``authenticator`` and also grant him the ability to switch to the ``web_anon`` role : It's better policy to include an expiration timestamp for tokens using the :code:`exp` claim. This is one of two JWT claims that PostgREST treats specially. It's now ready to serve web requests. There are many nice graphical API exploration tools you can use, but for this tutorial we'll use :code:`curl` because it's likely to be installed on your system already. Open a new terminal (leaving the one open that PostgREST is running inside). Try doing an HTTP request for the todos. Let's create a password and provide it to PostgREST. Think of a nice long one, or use a tool to generate it. **Your password must be at least 32 characters long.** Next make a role to use for anonymous web requests. When a request comes in, PostgREST will switch into this role in the database to run queries. Next update :code:`tutorial.conf` and specify the new function: Now quit out of psql; it's time to start the API! Now run the server: Now that you have PostgREST running, try the next tutorial, :ref:`tut1` Open the :code:`tutorial.conf` (created in the previous tutorial) and add a line with the password: Ordinarily your own code in the database or in another server will create and sign authentication tokens, but for this tutorial we will make one "by hand." Go to `jwt.io <https://jwt.io/#debugger-io>`_ and fill in the fields like this: Our API will have one endpoint, :code:`/todos`, which will come from a table. PostgREST allows us to specify a stored procedure to run during attempted authentication. The function can do whatever it likes, including raising an exception to terminate the request. PostgREST is a standalone web server which turns a PostgreSQL database into a RESTful API. It serves an API that is customized based on the structure of the underlying database. PostgREST is distributed as a single binary, with versions compiled for major distributions of Linux/BSD/Windows. Visit the `latest release <https://github.com/PostgREST/postgrest/releases/latest>`_ for a list of downloads. In the event that your platform is not among those already pre-built, see :ref:`build_source` for instructions how to build it yourself. Also let us know to add your platform in the next release. PostgREST requires libpq, the PostgreSQL C library, to be installed on your system. Without the library you'll get an error like "error while loading shared libraries: libpq.so.5." Here's how to fix it: PostgREST uses a configuration file to tell it how to connect to the database. Create a file :code:`tutorial.conf` with this inside: Response is 401 Unauthorized: Restart PostgREST for the change to take effect. Next try making a request with our original token and then with the revoked one. Save it to an environment variable: Step 1. Add a Trusted User Step 1. Relax, we'll help Step 2. Install PostgreSQL Step 2. Make a Secret Step 3. Install PostgREST Step 3. Sign a Token Step 4. Create Database for API Step 4. Make a Request Step 5. Add Expiration Step 5. Run PostgREST The :code:`web_anon` role has permission to access things in the :code:`api` schema, and to read rows in the :code:`todos` table. The API replies: The configuration file has other :ref:`options <configuration>`, but this is all we need. If you are not using Docker, make sure that your port number is correct and replace `postgres` with the name of the database where you added the todos table. The database role under which to execute SQL for API request The first thing we'll do is create a `named schema <https://www.postgresql.org/docs/current/ddl-schemas.html>`_ for the database objects which will be exposed in the API. We can choose any name we like, so how about "api." Execute this and the other SQL statements inside the psql prompt you started. The pre-built binaries for download are :code:`.tar.xz` compressed files (except Windows which is a zip file). To extract the binary, go into the terminal and run The previous tutorial created a :code:`web_anon` role in the database with which to execute anonymous web requests. Let's make a role called :code:`todo_user` for users who authenticate with the API. This role will have the authority to do anything to the todo list. The result will be a file named simply :code:`postgrest` (or :code:`postgrest.exe` on Windows). At this point try running it with The server responds with 403 Forbidden: There we have it, a basic API on top of the database! In the next tutorials we will see how to extend the example with more sophisticated user access controls, and more tables and queries. This will run the Docker instance as a daemon and expose port 5433 to the host system so that it looks like an ordinary PostgreSQL server to the rest of the system. To make an API we'll simply be building a database. All the endpoints and permissions come from database objects like tables, views, roles, and stored procedures. These tutorials will cover a number of common scenarios and how to model them in the database. To observe expiration in action, we'll add an :code:`exp` claim of five minutes in the future to our previous token. First find the epoch value of five minutes from now. In psql run this: To revoke a specific token we need a way to tell it apart from others. Let's add a custom :code:`email` claim that matches the email of the client issued the token. Try issuing this request in curl before and after the expiration time: Tutorial 0 - Get it Running Tutorial 1 - The Golden Key Unix tools can generate a nice password for you: Welcome to PostgREST! In this pre-tutorial we're going to get things running so you can create your first simple API. While the token may look well obscured, it's easy to reverse engineer the payload. The token is merely signed, not encrypted, so don't put things inside that you don't want a determined client to see. With the current role permissions, anonymous requests have read-only access to the :code:`todos` table. If we try to add a new todo we are not able. You should see You should see the psql command prompt: `begriffs <https://github.com/begriffs>`_ author jwt.io interface Project-Id-Version: PostgREST 9.0
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2022-01-15 19:55+0800
Last-Translator: YCH <chnyyk@gmail.com>
Language-Team: 
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
X-Generator: Poedit 3.0.1
 **注意**：不要忘了将上面代码片段中的占位 UNIX 时间戳 :code:`123456789` 替换为 psql 命令返回值。 **提示：上面图中 1 的位置是要填写前面生成的密码，而不是“Secret”这个字符串**。填完密码和负载（Payload）后，左侧的编码信息会自动更新，请拷贝更新后的令牌。 :code:`exp` :code:`role` 请求 todo 列表的结果显示总共有三条，且全部都已完成。 过期后，API 将返回 HTTP 401 Unauthorized： 现在我们已经完成了 todo 列表中的全部三件事，那么让我们用 :code:`PATCH` 请求把它们的 :code:`done` 设为 true 吧。 当你开始学习教程时，可在另一个标签中打开 `项目聊天室 <https://gitter.im/begriffs/postgrest>`_。有一群很友善的人活跃在项目中，如果你遇到困难，我们会帮助你的。 回到终端，让我们使用 :code:`curl` 来添加一个 todo。该请求将附带一个包含身份验证令牌的 HTTP 消息头。 附加话题：立即撤销 在本教程结束时，你将拥有一个可用的数据库、PostgREST 服务器和一个简易的单用户 todo 列表 API。 声明 客户使用 JWT（JSON Web Token）对 API 进行认证，它们是使用只有我们和服务器知道的密码进行加密签名的 JSON 对象。因为客户端不知道密码，所以不能篡改令牌内容。PostgREST 会检测伪造的令牌并拒绝它们。 在命令行使用如下命令连接到容器内的 SQL 控制台（psql） 像之前一样复制更新过的令牌，并将其保存为一个新的环境变量。 目前，我们的身份认证令牌是永久有效的。只要服务器继续使用相同的 JWT 密码，就会承认该令牌。 UNIX 时间戳定义为自 UTC（协调世界时）的 1970 年 1 月 1 日 00:00:00 以来所经过的秒数减去此后发生的闰秒数。 即使在令牌尚未过期的情况下，有时你也可能想立即撤销某个特定令牌。例如，你得知一个心怀不满的员工正在搞破坏，而他的令牌仍然有效。 令牌的过期时间戳，用“UNIX 时间戳”表示 首先新建一个 Schema 并添加如下函数： 让我们用下面的负载去创建一个新的令牌 回到 jwt.io 将负载更改为 如何在 https://jwt.io 创建一个令牌 如果没有安装 Docker，你可以从 `这里 <https://www.docker.com/get-started>`_ 开始。接下来，让我们拖回数据库镜像并启动它： 如果一切正常，它将打印出版本号和相关配置信息。你可以一直在你解压的地方运行这个可执行文件，也可将其拷贝到系统目录（如 Linux 上的 :code:`/usr/local/bin`），这样你就可以从任何目录启动它。 如果 PostgREST 服务器仍在运行，请重新启动它以加载更新过的配置文件。 如果你已经熟练使用 PostgreSQL 并且你的系统已经安装了，你可以直接使用即可（最低要求详见 :ref:`pg-dependency`）。在本教程中，我们将直接使用 Docker 中的数据库，因为数据库配置对于一个简单教程而言实在是太过于复杂。 在 :ref:`tut0` 中，我们创建了一个只读 API，它只有一个端点，用来罗列 todo。我们有很多种办法让这个 API 变得更有趣。其中一个较好的开始，就是允许用户不仅能读取数据，还能修改数据。 解释 创建一个专门的角色来连接数据库是一个很好的做法，而不是使用高权限的 ``postgres`` 角色。所以我们将角色命名为 “authenticator”，并授予它切换到 “web_anon” 角色的能力： 更好的策略是使用 :code:`exp` 声明为令牌包含一个过期时间戳。这是 PostgREST 特别对待的两个 JWT 声明之一。 现在它已经准备好处理网络请求了。市面上有许多美观的图形化 API 工具可以使用，但在本教程中我们将使用 :code:`curl`，因为它大概率已经安装在你的系统上了。打开一个新的命令行终端（别碰 PostgREST 运行的那个），尝试请求 `todos`。 让我们创建一个密码并提供给 PostgREST。想一个又长又好的密码，或者用工具生成一个。**你的密码必须至少有 32个 字符**。 接下来将设置一个用于匿名网络请求的角色。当有请求进来时，PostgREST 将切换这个角色来运行查询。 接着更新 :code:`tutorial.conf` 并指定这个新的函数： 是时候启动 API 了，先退出 psql！ 现在，运行服务器： 现在你已经让 PostgREST 跑起来啦，请接着尝试下一个：:ref:`tut1`。 打开 :code:`tutorial.conf` （已在之前的教程中创建），新增一行配置该密码： 通常情况下，你在数据库或其他服务器中的代码将创建和签发认证令牌。但在本教程中，我们将“手工”生成一个。访问 `jwt.io <https://jwt.io/#debugger-io>`_ 并照此填写： 我们的 API 需要一个端点 :code:`/todos`，它（的数据）将来自一个表。 PostgREST 允许我们在尝试身份认证期间指定一个要运行的存储过程。该存储过程（函数）可以做任何它想做的事情，包括引发异常以终止请求。 PostgREST 是一个独立的 Web 服务器，它将你的 PostgreSQL 数据库变成一个 RESTful API。它提供了基于底层数据库结构的自定义的 API。 PostgREST 发布为一个单独的可执行文件，并分别针对 Linux / BSD / Windows 各主要发行版编译，请访问 `最新版本 <https://github.com/PostgREST/postgrest/releases/latest>`_ 查看下载列表。如果碰巧你的平台不在受支持的平台之列，请参见 :ref:`build_source` 以便了解如何自行编译，当然也请让我们知道以便在下一个版本中加入你的平台。 PostgREST 需要 libpq（即 PostgreSQL 的 C 语言库文件）安装在你的系统上。如果没有这个库，你会得到一个类似 “加载共享库时出错：libpq.so.5 ”的错误提示。下面是解决办法： PostgREST 使用配置文件来告诉它如何连接到数据库。请用以下内容创建文件 :code:`tutorial.conf`： 响应是 401 未授权： 重新启动 PostgREST 以使改变生效。接下来，尝试用我们的原始令牌和被撤销的令牌进行请求。 并将其保存到环境变量中： 第一步、添加受信用户 第一步、放松，我们会帮助你 第二步、安装 PostgreSQL 第二步、生成 Secret 第三步、安装 PostgREST 第三步、签发 Token 第四步、为 API 创建数据库 第四步、发起请求 第五步、控制超时 第五步、运行 PostgREST :code:`web_anon` 角色具备访问 :code:`api` Schema 和读取 :code:`todos` 表中数据行的权限。 API 应答： 配置文件还有其他各种 :ref:`选项 <configuration>`，但此刻我们就需要这些就够了。如果你使用 Docker，请确保端口号正确，并将 `db-uri` 最后一行的 `postgres` 替换为你添加了 `todos` 表的数据库名。 为 API 请求执行 SQL 的数据库角色 我们要做的第一件事，是为将在 API 中暴露的数据库对象创建一个 `命名 Schema <https://www.postgresql.org/docs/current/ddl-schemas.html>`_。我们可以选择任意中意的名字，比如 “api”。在你启动的 psql 命令行中执行以下 SQL 语句。 供下载的已编译好的可执行文件是 :code:`.tar.xz` 格式的压缩文件（Windows 是一个 ZIP 压缩文件）。要提取可执行文件，请打开终端（命令行）并运行 前面的教程已在数据库里创建了角色 :code:`web_anon`，并用它来执行匿名的网络请求。让我们再为使用 API 认证的用户创建一个名为 :code:`todo_user` 的角色，它将有权力对 todo 列表做任何事情。 将会得到一个极为简单的文件 :code:`postgrest` （Windows 是 :code:`postgrest.exe`）。此时运行如下命令 服务器将会响应 403 Forbidden。 搞定，我们有了一个基于数据库的简单 API。在接下来的教程中，我们将了解如何使用更复杂的用户访问控制以及更多的表和查询来扩展这个示例。 上面的命令将会把 Docker 实例作为一个后台服务运行在宿主系统的 5433 端口上，对于其他系统而言，它看起来就像一个普通的 PostgreSQL 服务器一样。 为了构造 API，我们仅需简单地构造数据库即可，所有的端点和权限都来自数据库对象，如表、视图、角色和存储过程等。这些教程将涵盖一些常见场景，以及如何在数据库中建模。 为了观察实际的过期情况，我们将在之前的令牌上添加一个 :code:`exp` 声明，时间为未来五分钟。首先得找到自现在开始 5 分钟后的 UNIX 时间戳，在 psql 中运行： 为了撤销某个特定令牌，我们需要一种方法来将它与其他令牌区分开。让我们添加一个自定义的 :code:`email` 声明，以匹配签发令牌的客户端的电子邮件。 试着在过期时间之前和之后分别用 curl 发送如下请求： 教程 0 - 开始运行 教程 1 - 金钥匙 UNIX 工具可以为你生成很好的密码： 欢迎来到 PostgREST！在这个预习教程中，我们将让这一切运行起来，以便创建你的第一个简单 API。 令牌虽然看起来很隐蔽，但其实很容易对其进行逆向解码。令牌只是被签名，而不是被加密，所以切记不要把您不希望客户端看到的内容放入其中。 在当前的角色权限下，匿名请求可以只读访问 :code:`todos` 表。如果我们尝试添加新的 `todo`，将会失败。 你将会看见 你将会看到 psql 命令行回显提示： `begriffs <https://github.com/begriffs>`_ 作者 jwt.io 界面 
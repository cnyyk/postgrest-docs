��    T      �  q   \         �   !  p    `  t	  2   �
  4       =     N     l     �  "   �  *   �     �  *   
  2   5  '   h     �     �     �     �     �               /     K     f     t     �      �     �     �     �  Q   �  5   9     o     ~     �     �  	   �  /   �     �       9     �   Q     ,     :     H  k  U     �     �  
   �     �  �   �     �  �   �  _   �  �   �     �     �     �     �       3        A    N  �   T  >        L  	   Y  _  c  #   �  $   �  )     �   6  .   �       ]   !       �   �  +   G  $   s  $   �  "   �     �  q  �  �   Y  C  U  l  �   5   "  >  <"     {#     �#     �#     �#  "   �#  '   �#     $  *   /$  2   Z$  '   �$     �$     �$     �$     �$     %     (%     >%     T%     p%     �%     �%     �%      �%     �%     �%     �%  M   &  A   R&     �&     �&     �&     �&     �&  +   �&     �&     '  >   '  �   Z'     /(     <(     I(  d  P(     �)     �)     �)     �)  ~   �)     e*  �   v*  s   N+  �   �+     q,     ~,     �,     �,     �,  "   �,     �,    �,  �   �-  6   �.     �.     �.  _  �.  #   R0  $   v0  )   �0  �   �0  .   M1     |1  ]   �1     �1  �   2  +   �2  $   3  $   23  "   W3     z3     4       *       '      Q              L   /   N              D      -   ?   M      S      T         )   :       $   @          .       ,   6       9   1   J   "              P   5      A   7      (   	   #       ;   I                     K       !           <      =           O             F   &   
   >                           C         H         +   8       R                     B   %   G   0          3   2   E    "I just have to say that, the CPU/Memory usage compared to our Node.js/Waterline ORM based API is ridiculous.  It's hard to even push it over 60/70 MB while our current API constantly hits 1GB running on 6 instances (dynos)." "I like the fact that PostgREST does one thing, and one thing well. While PostgREST takes care of bridging the gap between our HTTP server and PostgreSQL database, we can focus on the development of our API in a single language: SQL. This puts the database in the center of our architecture, and pushed us to improve our skills in SQL programming and database design." "I really enjoyed the fact that all of a sudden I was writing microservices in SQL DDL (and v8 JavaScript functions). I dodged so much boilerplate. The next thing I knew, we pulled out a full rewrite of a Spring+MySQL legacy app in 6 months. Literally 10x faster, and code was super concise. The old one took 3 years and a team of 4 people to develop." "It's so fast to develop, it feels like cheating!" "PostgREST is performant, stable, and transparent. It allows us to bootstrap projects really fast, and to focus on our data and application instead of building out the ORM layer. In our k8s cluster, we run a few pods per schema we want exposed, and we scale up/down depending on demand. Couldn't be happier." :doc:`API <api>` :doc:`Administration <admin>` :doc:`Authentication <auth>` :doc:`Installation <install>` :doc:`Schema Cache <schema_cache>` :doc:`Schema Structure <schema_structure>` :doc:`configuration` :doc:`how-tos/casting-type-to-custom-json` :doc:`how-tos/embedding-table-from-another-schema` :doc:`how-tos/providing-images-for-img` :doc:`releases/v5.2.0` :doc:`releases/v6.0.2` :doc:`releases/v7.0.0` :doc:`releases/v8.0.0` :doc:`releases/v9.0.0` :doc:`tutorials/tut0` :doc:`tutorials/tut1` :ref:`clientside_libraries` :ref:`community_tutorials` :ref:`devops` :ref:`eco_example_apps` :ref:`eco_extensions` :ref:`eco_external_notification` :ref:`templates` API Administration Also have a look at :doc:`Installation <install>` and :ref:`community_tutorials`. Are you new to PostgREST? This is the place to start! Authentication Configuration Contributing Declarative Programming Ecosystem Explanations of some key concepts in PostgREST. François-Guillaume Ribreau Getting Support Here are some companies that use PostgREST in production. Here we'll include the most relevant changes so you can migrate to newer versions easily. You can see the full changelog of each release in the `PostgREST repository <https://github.com/PostgREST/postgrest/releases>`_. How-to guides In Production Installation It's easier to ask PostgreSQL to join data for you and let its query planner figure out the details than to loop through rows yourself. It's easier to assign permissions to db objects than to add guards in controllers. (This is especially true for cascading permissions in data dependencies.) It's easier to set constraints than to litter code with sanity checks. Leak-proof Abstraction Louis Brauer Motivation One Thing Well Please see the `Contributing guidelines <https://github.com/PostgREST/postgrest/blob/main/.github/CONTRIBUTING.md>`_ in the main PostgREST repository. PostgREST Documentation PostgREST has a focused scope. It works well with other tools like Nginx. This forces you to cleanly separate the data-centric CRUD operations from other concerns. Use a collection of sharp tools rather than building a big ball of mud. PostgREST has a growing ecosystem of examples, libraries, and experiments. Here is a selection. PostgREST is a standalone web server that turns your PostgreSQL database directly into a RESTful API. The structural constraints and permissions in the database determine the API endpoints and operations. Reference guides Release Notes Schema Cache Schema Structure Sponsors Technical references for PostgREST's functionality. Testimonials The project has a friendly and growing community. Join our `chat room <https://gitter.im/begriffs/postgrest>`_ for discussion and help. You can also report or search for bugs/features on the Github `issues <https://github.com/PostgREST/postgrest/issues>`_ page. There is no ORM involved. Creating new views happens in SQL with known performance implications. A database administrator can now create an API from scratch with no custom programming. These are recipes that'll help you address specific use-cases. Topic guides Tutorials Using PostgREST is an alternative to manual CRUD programming. Custom API servers suffer problems. Writing business logic often duplicates, ignores or hobbles database structure. Object-relational mapping is a leaky abstraction leading to slow imperative code. The PostgREST philosophy establishes a single declarative source of truth: the data itself. `Catarse <https://www.catarse.me>`_ `Datrium <https://www.datrium.com>`_ `Drip Depot <https://www.dripdepot.com>`_ `How PostgreSQL triggers work when called with a PostgREST PATCH HTTP request <https://blog.fgribreau.com/2020/11/how-postgresql-triggers-works-when.html>`_ `Image-charts <https://www.image-charts.com>`_ `Moat <https://www.moat.com>`_ `MotionDynamic - Fast highly dynamic video generation at scale <https://motiondynamic.tech>`_ `Netwo <https://www.netwo.io>`_ `Nimbus <https://www.nimbusforwork.com>`_ - See how Nimbus uses PostgREST in `Paul Copplestone's blog post <https://paul.copplest.one/blog/nimbus-tech-2019-04.html>`_. `OpenBooking <https://www.openbooking.ch>`_ `Redsmin <https://www.redsmin.com>`_ `Sompani <https://www.sompani.com>`_ `Supabase <https://supabase.com>`_ v9.0.0 Project-Id-Version: PostgREST 9.0
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2022-01-12 20:00+0800
Last-Translator: YCH <chnyyk@gmail.com>
Language-Team: YCH <chnyyk@gmail.com>
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
Generated-By: Babel 2.9.1
X-Generator: Poedit 3.0.1
 “我不得不说，与我们基于 Node.js / Waterline ORM 的 API 相比，CPU / 内存的使用量实在是太不可思议了。在我们的 6 个实例（dynos）上，前者动辄 1G 内存占用，而后者甚至很少超过 60/70M 内存。” “我欣赏 PostgREST 只做一件事、做好一件事。当 PostgREST 无缝衔接了 HTTP 服务器和 PostgreSQL 数据库，我们便可以专注于用 SQL 一种语言去开发我们的API。这使得数据库成为了我们的架构中心点，并促使我们不断提升 SQL 编程和数据库设计的能力。” “我确实很享受这个现实：突然之间我可以用 SQL DDL（和 V8 JavaScript 函数）来写微服务了。我避开了许多的样板，然后我们花了 6 个月时间完全重写了 Spring + MySQL 的传统应用，速度快了 10 倍，而代码却超级简洁。这套应用之前可是一个 4 人团队花了 3 年时间才开发完成的。” “开发起来太快了, 感觉就像在作弊！” “PostgREST 高性能、稳定和透明，它使我们能够快速启动项目，并专注于我们的数据和应用，而不是去构建 ORM 层。在我们的 k8s 集群中，我们为每一个我们想要暴露的 Schema 运行几个 pod，并且根据需求扩大/缩小规模。这真是太令人高兴了。” :doc:`API <api>` :doc:`管理 <admin>` :doc:`认证 <auth>` :doc:`安装 <install>` :doc:`模式缓存 <schema_cache>` :doc:`Schema 结构 <schema_structure>` :doc:`configuration` :doc:`how-tos/casting-type-to-custom-json` :doc:`how-tos/embedding-table-from-another-schema` :doc:`how-tos/providing-images-for-img` :doc:`releases/v5.2.0` :doc:`releases/v6.0.2` :doc:`releases/v7.0.0` :doc:`releases/v8.0.0` :doc:`releases/v9.0.0` :doc:`tutorials/tut0` :doc:`tutorials/tut1` :ref:`clientside_libraries` :ref:`community_tutorials` :ref:`devops` :ref:`eco_example_apps` :ref:`eco_extensions` :ref:`eco_external_notification` :ref:`templates` API 管理 另外也可以看看 :doc:`安装 <install>` 和 :ref:`community_tutorials`. 你是才开始了解 PostgREST 吗？那就从这里开始吧！ 认证 配置 参与贡献 声明式编程 生态 PostgREST 中一些关键概念的解释。 François-Guillaume Ribreau 获取支持 下面是一些在生产环境中使用 PostgREST 的公司。 下面列出了一些重要变更，以便你可以轻松的迁移到新版本。你还可以在 `PostgREST 仓库 <https://github.com/PostgREST/postgrest/releases>`_ 中看到每个版本的完整变更记录。 操作指南 生产应用 安装 让 PostgreSQL 为你连接数据并充分利用其查询规划器找出各种细节，比你自己循环数据行要更容易。给数据库对象分配权限比在控制器（其他语言框架的 Controller）中添加保护措施更容易（尤其是数据依赖中的级联权限）。设置约束也比用拼凑的代码进行安全检查更容易。 防漏抽象 Louis Brauer 动机 做好一件事 请参阅 PostgREST 仓库中的 `贡献指南 <https://github.com/PostgREST/postgrest/blob/main/.github/CONTRIBUTING.md>`_。 PostgREST 文档 PostgREST 有其专注的范围。它与 Nginx 等其他工具配合得很好。这可以迫使你将以数据为中心的 CRUD 操作与其他问题彻底分离。整合使用利器，而非构建一个大泥球。 PostgREST 有一个不断增长的例子、库和实验的生态系统。这是开发应用的一个候选方案。 PostgREST 是一个独立的 Web 服务器，它将你的 PostgreSQL 数据库直接变成一个 RESTful API，各种端点和操作由数据库中的约束和权限决定。 参考指南 发布日志 Schema 缓存 Schema 结构 赞助名单 PostgREST 功能的技术参考。 用户评价 该项目有一个友好且不断成长的社区。加入我们的 `聊天室 <https://gitter.im/begriffs/postgrest>`_ 进行讨论和互相帮助，也可以在 Github 的 `Issues <https://github.com/PostgREST/postgrest/issues>`_ 页面报告或搜寻 Bug 与功能特性。 无需 ORM 参与，在 SQL 层面创建新的性能影响明确的视图。无需开发人员参与，数据库管理员（DBA）现在也可以从头开始创建 API 了。 下面是一些能帮你搞定特定用例的套路。 主题指南 教程 PostgREST 是手动 CRUD 编程的一个替代方案。自定义 API 服务器会遇到各种问题。业务逻辑经常重复编写，数据库结构被忽略或破坏。对象关系映射（ORM）是抽象泄漏的（Leaky Abstraction），会产生效率低下的代码。PostgREST 哲学建立了一个单一的声明式数据源：数据本身。 `Catarse <https://www.catarse.me>`_ `Datrium <https://www.datrium.com>`_ `Drip Depot <https://www.dripdepot.com>`_ `PostgreSQL 触发器如何处理 PostgREST PATCH 请求 <https://blog.fgribreau.com/2020/11/how-postgresql-triggers-works-when.html>`_ `Image-charts <https://www.image-charts.com>`_ `Moat <https://www.moat.com>`_ `MotionDynamic - Fast highly dynamic video generation at scale <https://motiondynamic.tech>`_ `Netwo <https://www.netwo.io>`_ `Nimbus <https://www.nimbusforwork.com>`_ - 请查看 `Paul Copplestone’s 的博客文章 <https://paul.copplest.one/blog/nimbus-tech-2019-04.html>`_，以便了解 Nimbus 如何使用 PostgREST。 `OpenBooking <https://www.openbooking.ch>`_ `Redsmin <https://www.redsmin.com>`_ `Sompani <https://www.sompani.com>`_ `Supabase <https://supabase.com>`_ v9.0.0 
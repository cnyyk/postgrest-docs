��    ~        �   �      �
  
   �
  
   �
  
   �
     �
  
   �
  
   �
     �
  
     	     	   "  
   ,  
   7  	   B  
   L  
   W     b     n  
   |  
   �     �     �  
   �  !   �      �     �  %        ;  �   H     5  1   C     u     �     �  	   �     �     �     �     �       ,         M     l  "   �     �     �  �   �     �     �     �  $   �     �            #   #     G     a     w     �     �     �     �  	   �     �     �     �     �                #     6     H     Z     v  %   �  �   �     B     a     q  K  �  �   �  s   {     �     �     �  5   �  ,   0  -   ]     �     �  ?   �     �     �     �     �               !     %     +     .  .   1  	   `     j     }  1   �  0   �     �     �  6   �     #     '  	   +     5     9  �   =     �     �  �   �     �     �     �     �  /   �     �     �  7  �  
     
      
   +     6  
   B  
   M     X  
   r  	   }  	   �  
   �  
   �  	   �  
   �  
   �     �     �  
   �  
   �     �       
     !         =     ^  %   z     �  �   �     �  $   �     �  	   �     �     �                    1     A  $   N     s     �     �     �     �  �   �     �     �     �     �               +     4     S     k     �     �     �     �     �  	   �     �     �     �     �     �                 %      2      @      \   '   i   �   �      0!     L!     [!  $  q!  �   �"  j   )#     �#     �#     �#  ;   �#  *   �#  ,   $     3$     6$  3   I$     }$     �$     �$     �$     �$     �$     �$     �$     �$     �$  )   �$     �$     �$     �$  7   �$  6   -%     d%     g%  =   k%     �%     �%  	   �%     �%     �%  �   �%     O&     R&  �   U&     �&     �&     '     '  7   
'     B'     ['     |         N   M   r                  ,   A       '   -       t      ?      6   m                     7   j           R             V          *   c   +   @   5       <   F      (   n   .   {   y      =   )       ^   3   2      v           b      9      "   S       C      P   Z   q       k      K   J   :                  ]       D   B                          o   	      O   w   0       x   G   Q   1   X   &       i   W   H   z   l             T       4   #   _   p   
   E      U   I   !   [       }      %       ~   g              d   Y       a   h                  e   `                  L   8       /   ;              $   >   f   s           u       \    :code:`&&` :code:`&<` :code:`&>` :code:`-|-` :code:`<<` :code:`<=` :code:`<>` or :code:`!=` :code:`<@` :code:`<` :code:`=` :code:`>=` :code:`>>` :code:`>` :code:`@>` :code:`@@` :code:`AND` :code:`ILIKE` :code:`IN` :code:`IS` :code:`LIKE` :code:`NOT` :code:`OR` :ref:`fts` using phraseto_tsquery :ref:`fts` using plainto_tsquery :ref:`fts` using to_tsquery :ref:`fts` using websearch_to_tsquery Abbreviation All views and tables in the exposed schema and accessible by the active database role for a request are available for querying. They are exposed in one-level deep routes. For instance the full contents of a table `people` is returned at Binary Output Calling functions with a single unnamed parameter Casting Columns Computed Columns Custom Queries Deletions Embedded Filters Embedding Chains of Views Embedding Disambiguation Embedding Partitioned Tables Embedding Views Embedding after Insertions/Updates/Deletions Embedding on Stored Procedures Embedding through join tables Embedding with Top-level Filtering Estimated Count Exact Count For more complicated filters you will have to create a new view in the database, or use a stored procedure. For instance, here's a view to show "today's stories" including possibly older pinned stories: Full-Text Search HTTP Context Horizontal Filtering (Rows) ILIKE operator (use * in place of %) In PostgreSQL Insertions / Updates JSON Columns LIKE operator (use * in place of %) Legacy GUC variable names Limits and Pagination Logical operators Meaning Nested Embedding OPTIONS OpenAPI Support Operators Ordering Planned Count Renaming Columns Reserved characters Resource Embedding Response Format Singular or Plural Stored Procedures Switching Schemas Table / Columns with spaces Tables and Views The view will provide a new endpoint: There are no deeply/nested/routes. Each route provides OPTIONS, GET, HEAD, POST, PATCH, and DELETE verbs depending entirely on database permissions. These operators are available: Unicode support Vertical Filtering (Columns) Why not provide nested routes? Many APIs allow nesting to retrieve related information, such as :code:`/films/1/director`. We offer a more flexible mechanism (inspired by GraphQL) to embed related information. It can handle one-to-many and many-to-many relationships. This is covered in the section about :ref:`resource_embedding`. You can evaluate multiple conditions on columns by adding more query string parameters. For instance, to return people who are 18 or older **and** are students: You can filter result rows by adding conditions on columns. For instance, to return people aged under 13 years old: adj and cd checking for exact equality (null,true,false,unknown) contained in e.g. :code:`?values=cd.{1,2,3}` contains e.g. :code:`?tags=cs.{example, new}` cs does not extend to the left of does not extend to the right of, e.g. :code:`?range=nxr.(1,10)` eq equals fts greater than greater than or equal gt gte ilike in is is adjacent to, e.g. :code:`?range=adj.(1,10)` less than less than or equal like logical :code:`AND`, see :ref:`logical_operators` logical :code:`OR`, see :ref:`logical_operators` lt lte negates another operator, see :ref:`logical_operators` neq not not equal nxl nxr one of a list of values, e.g. :code:`?a=in.(1,2,3)` – also supports commas in quoted strings like :code:`?a=in.("hi,there","yes,you")` or ov overlap (have points in common), e.g. :code:`?period=ov.[2017-01-01,2017-06-30]` – also supports array types, use curly braces instead of square brackets e.g. :code: `?arr=ov.{1,3}` phfts plfts sl sr strictly left of, e.g. :code:`?range=sl.(1,10)` strictly right of wfts Project-Id-Version: PostgREST 9.0
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2022-01-15 21:30+0800
Last-Translator: YCH <chnyyk@gmail.com>
Language-Team: 
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
X-Generator: Poedit 3.0.1
 :code:`&&` :code:`&<` :code:`&>` :code:`-|-` :code:`<<` :code:`<=` :code:`<>` 或 :code:`!=` :code:`<@` :code:`<` :code:`=` :code:`>=` :code:`>>` :code:`>` :code:`@>` :code:`@@` :code:`AND` :code:`ILIKE` :code:`IN` :code:`IS` :code:`LIKE` :code:`NOT` :code:`OR` :ref:`fts` using phraseto_tsquery :ref:`fts` using plainto_tsquery :ref:`fts` using to_tsquery :ref:`fts` using websearch_to_tsquery 缩写 公开暴露的 Schema 中的所有视图和表，以及当前请求的活动数据库角色可访问到的（视图和表），都可用于查询。它们被暴露在一级路由中。例如，以下请求将返回表 `people` 的全部内容 二进制输出 调用单个未命名参数的函数 列类型转换 计算列 自定义查询 删除 嵌入过滤 嵌入视图链 嵌入消除歧义 嵌入分区表 嵌入视图 插入 / 更新 / 删除后的嵌入 嵌入存储过程 通过连接表嵌入 带有顶层筛选的嵌入 估算统计 精确统计 对于更复杂的筛选组合，你必须在数据库中创建一个新的视图，或使用一个存储过程。例如，这里有一个显示“今天的故事”的视图，其中可能包括过去的被置顶的故事。 全文检索 HTTP 上下文 水平筛选（行） ILIKE 操作符（* 替代 %） PostgreSQL 操作符 插入 / 更新 JSON 列 LIKE 操作符（* 代替 %） 老的 GUC 变量名称 结果限定和分页 逻辑运算符 含义 多重嵌套 OPTIONS 方法 OpenAPI 支持 操作符 排序 计划统计 重命名列 保留字符 资源嵌入 响应格式 单数或复数 存储过程 切换 Schema 表名 / 列名包含空格 表和视图 该视图将提供一个新的端点： 不存在深度 / 嵌套的路由。每个路由都提供完全依赖于数据库权限的 OPTIONS、GET、HEAD、POST、PATCH 和 DELETE 动作（Verbs）。 有以下操作符可用： Unicode 支持 垂直筛选（列） 为何不提供嵌套路由？许多 API 允许嵌套检索相关信息，如 :code:`/films/1/director`。我们提供了一种更灵活的机制（受 GraphQL 启发）来嵌入相关信息。它可以处理一对多和多对多的关系，将在 :ref:`resource_embedding` 一节中介绍。 你可以通过添加更多的查询字符串参数来计算列上的多个条件。例如，要返回 18 岁及以上**并且**是学生的人： 你可以通过在列上添加条件来过滤结果行。例如，要返回年龄在 13 岁以下的人： adj and cd 检查是否完全相等（null / true / false / unknown） 包含于，如 :code:`?values=cd.{1,2,3}` 包含，如 :code:`?tags=cs.{example, new}` cs 不延伸到左边 不延伸到右边，如 :code:`?range=nxr. (1,10)` eq 等于 fts 大于 大于等于 gt gte ilike in is 相邻的，如 :code:`?range=adj.(1,10)` 小于 小于等于 like 逻辑的 :code:`AND`，参见 :ref:`logical_operators` 逻辑的 :code:`OR`，参见 :ref:`logical_operators` lt let 对另一个操作符取反，参见 :ref:`logical_operators` neq not 不等于 nxl nxr 系列值中的一个，如 :code:`?a=in.(1,2,3)`。也支持引号字符串中的逗号，如 :code:`?a=in.(“hi,there”,”yes,you”)` or ov 重叠（有共同点），如 :code:`?period=ov.[2017-01-01,2017-06-30]`。也支持数组类型，使用大括号而不是方括号，如 :code: `?arr=ov.{1,3}` phfts plfts sl sr 严格意义上的左边，如 :code:`?range=sl.(1,10)` 严格意义上的右边 wfts 
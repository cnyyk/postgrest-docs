Þ          Ä      l      à  D  á  +  &  L   R      m  ¬  Z     	   u  
    Ë   	  c  V
  Ò   º               ¤      µ  ½   Ö           <    T   Û  7  0  A  h  ÿ   ª  9   ª  Î   ä  U  ³     	       û    ¥     B  :  ã   }     a     h  %   v       Ç   »  ä        h  q  o  P   á                  
                                                        	                        A PostgREST instance exposes all the tables, views, and stored procedures of a single `PostgreSQL schema <https://www.postgresql.org/docs/current/ddl-schemas.html>`_ (a namespace of database objects). This means private data or implementation details can go inside different private schemas and be invisible to HTTP clients. A function is executed with the privileges of the user who calls it. This means that the user has to have all permissions to do the operations the procedure performs. If the function accesses private database objects, your :ref:`API roles <roles>` won't be able to successfully execute the function. After that, you'll need to grant EXECUTE privileges on functions explicitly: Another option is to define the function with the :code:`SECURITY DEFINER` option. Then only one permission check will take place, the permission to call the function, and the operations in the function will have the authority of the user who owns the function itself. By default, when a function is created, the privilege to execute it is not restricted by role. The function access is ``PUBLIC`` â executable by all roles (more details at `PostgreSQL Privileges page <https://www.postgresql.org/docs/current/ddl-priv.html>`_). This is not ideal for an API schema. To disable this behavior, you can run the following SQL statement: For changing this, we can create a non-SUPERUSER role and make this role the view's owner. Functions Insertion on views with complex `rules <https://www.postgresql.org/docs/current/sql-createrule.html>`_ might not work out of the box with PostgREST. It's recommended that you `use triggers instead of rules <https://wiki.postgresql.org/wiki/Don%27t_Do_This#Don.27t_use_rules>`_. If you want to keep using rules, a workaround is to wrap the view insertion in a stored procedure and call it through the :ref:`s_procs` interface. For more details, see this `github issue <https://github.com/PostgREST/postgrest/issues/1283>`_. It is however possible to limit the effect of this clause only to functions you define. You can put the above statement at the beginning of the API schema definition, and then at the end reverse it with: It is recommended that you don't expose tables on your API schema. Instead expose views and stored procedures which insulate the internal details from the outside world. This allows you to change the internals of your schema and maintain backwards compatibility. It also keeps your code easier to refactor, and provides a natural way to do API versioning. Note the ``SECURITY DEFINER`` keywords at the end of the function. See `PostgreSQL documentation <https://www.postgresql.org/docs/current/sql-createfunction.html#SQL-CREATEFUNCTION-SECURITY>`_ for more details. Rules Schema Isolation Security definer This page is a work in progress. This will change the privileges for all functions created in the future in all schemas. Currently there is no way to limit it to a single schema. In our opinion it's a good practice anyway. This will work because the :code:`alter default privileges` statement has effect on function created *after* it is executed. See `PostgreSQL alter default privileges <https://www.postgresql.org/docs/current/sql-alterdefaultprivileges.html>`_ for more details. Views Views are invoked with the privileges of the view owner, much like stored procedures with the ``SECURITY DEFINER`` option. When created by a SUPERUSER role, all `row-level security <https://www.postgresql.org/docs/current/ddl-rowsecurity.html>`_ will be bypassed unless a different, non-SUPERUSER owner is specified. You can also grant execute on all functions in a schema to a higher privileged role: Project-Id-Version: PostgREST 9.0
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2022-01-17 21:06+0800
Last-Translator: YCH <chnyyk@gmail.com>
Language-Team: 
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
X-Generator: Poedit 3.0.1
 ä¸ä¸ª PostgREST å®ä¾æ´é²äºä¸ä¸ªåä¸ç `PostgreSQL Schemaï¼æ°æ®åºå¯¹è±¡çå½åç©ºé´ï¼ <https://www.postgresql.org/docs/current/ddl-schemas.html>`_ çææè¡¨ãè§å¾åå­å¨è¿ç¨ãè¿æå³çç§ææ°æ®æå®ç°ç»èå¯ä»¥è¿å¥ä¸åçç§æ Schemaï¼å¹¶ä¸å¯¹ HTTP å®¢æ·ç«¯æ¯ä¸å¯è§çã ä¸ä¸ªå½æ°æ¯ä»¥è°ç¨å®çç¨æ·çæéæ¥æ§è¡çãè¿æå³çè¯¥ç¨æ·å¿é¡»æææçæéæ¥å®æè¯¥å½æ°ææ§è¡çæä½ãå¦æè¯¥å½æ°è®¿é®ç§ææ°æ®åºå¯¹è±¡ï¼ä½ ç :ref:`API è§è² <roles>` å°ä¸è½æåæ§è¡è¯¥å½æ°ã ä¹åï¼ä½ éè¦æ¾å¼å°æäºå½æ° EXECUTE æéï¼ å¦ä¸ä¸ªéé¡¹æ¯å¸¦ç :code:`SECURITY DEFINER` éé¡¹å®ä¹å½æ°ãç¶åï¼åªä¼è¿è¡ä¸æ¬¡æéæ£æ¥ï¼å³è°ç¨å½æ°çæéï¼å½æ°ä¸­çæä½å°å·æè¯¥å½æ°æ¬èº«çæ¥æèçæéã é»è®¤æåµä¸ï¼å½æ°è¢«åå»ºåï¼æ§è¡å®çæéä¸åè§è²éå¶ãå½æ°çè®¿é®æéæ¯ ``PUBLIC`` ââ å¯ç±ææè§è²æ§è¡ï¼è¯¦è§ `PostgreSQL æéé¡µé¢ <https://www.postgresql.org/docs/current/ddl-priv.html>`_ï¼ãè¿å¯¹ä¸ä¸ª API Schema æ¥è¯´å¹¶ä¸çæ³ãè¦ç¦ç¨æ­¤è¡ä¸ºï¼å¯ä»¥æ§è¡ä»¥ä¸ SQL è¯­å¥ï¼ ä¸ºäºæ¹åè¿ç§æåµï¼æä»¬å¯ä»¥åå»ºä¸ä¸ªéè¶çº§ç¨æ·ï¼SUPERUSERï¼è§è²ï¼å¹¶è®©è¿ä¸ªè§è²æä¸ºè§å¾çææèã å½æ° å¤æ `è§å <https://www.postgresql.org/docs/current/sql-createrule.html>`_ çè§å¾ä¸çæå¥æä½å¯è½æ æ³å¨ PostgREST ä¸­æ­£å¸¸å·¥ä½ãå»ºè®®ä½  `ä½¿ç¨è§¦åå¨èä¸æ¯è§å <https://wiki.postgresql.org/wiki/Don%27t_Do_This#Don.27t_use_rules>`_ãå¦æä½ æ³ç»§ç»­ä½¿ç¨è§åï¼ä¸ä¸ªåéæ¹æ³æ¯æè§å¾æå¥è¯­å¥åè¿å­å¨è¿ç¨ï¼å¹¶éè¿ :ref:`s_procs` æ¥å£è°ç¨å®ãæ´å¤ç»èï¼è¯·åè§è¿ä¸ª `Github é®é¢ <https://github.com/PostgREST/postgrest/issues/1283>`_ã ä¸è¿ï¼å¯ä»¥å°æ­¤å­å¥çä½ç¨éå¶å¨ä½ å®ä¹çå½æ°ä¸­ãä½ å¯ä»¥æä¸é¢çè¯­å¥æ¾å¨ API Schema å®ä¹çå¼å¤´ï¼ç¶åå¨ç»ææ¶å°å¶è¿åï¼ å»ºè®®ä½ ä¸è¦å¨ä½ ç API Schema ä¸æ´é²ï¼å®ä½ï¼è¡¨ãåèä»£ä¹çæ¯ï¼æ´é²è§å¾åå­å¨è¿ç¨ï¼å°åé¨ç»èä¸å¤é¨ä¸çéç¦»å¼æ¥ãè¿åè®¸ä½ æ¹å Schema åé¨ç»æï¼å¹¶ä¿æååå¼å®¹ãå®è¿å¯ä»¥ä½¿ä½ çä»£ç æäºéæï¼å¹¶æä¾ä¸ç§èªç¶çæ¹å¼è¿è¡ API çæ¬æ§å¶ã è¯·æ³¨æï¼``SECURITY DEFINER`` å³é®è¯ä½äºå½æ°å®ä¹çææ«å°¾ãåè§ `PostgreSQL åå»ºå½æ° <https://www.postgresql.org/docs/current/sql-createfunction.html#SQL-CREATEFUNCTION-SECURITY>`_ ä»¥äºè§£æ´å¤ç»èã è§å Schema éç¦» å®å¨å®ä¹èï¼Security Definerï¼ æ¬é¡µåå®¹å°å¨å®åä¸­ã è¿å°æ¹åç»åå¨ææ Schema ä¸­åå»ºçææå½æ°çæéãç®åè¿æ²¡æåæ³å°å¶éå¶å¨æä¸ªåç¬ç Schema ä¸­ãå¨æä»¬çæ¥ï¼æ è®ºå¦ä½è¿é½æ¯ä¸ä¸ªå¾å¥½çå®è·µã è¿è½èµ·ä½ç¨æ¯å ä¸º :code:`alter default privileges` è¯­å¥ä»å½±åå¨å¶æ§è¡ **å** åå»ºçå½æ°ãåè§ `PostgreSQL æ¹åé»è®¤æé <https://www.postgresql.org/docs/current/sql-alterdefaultprivileges.html>`_ã è§å¾ è§å¾æ¯ä»¥è§å¾ææèçæéæ¥è°ç¨çï¼å°±åä½¿ç¨äº ``SECURITY DEFINER`` éé¡¹çå½æ°ï¼å­å¨è¿ç¨ï¼ãå½ç±è¶çº§ç¨æ·ï¼SUPERUSERï¼è§è²åå»ºæ¶ï¼ææç `è¡å®å¨æ§ï¼Row Securityï¼ <https://www.postgresql.org/docs/current/ddl-rowsecurity.html>`_ å°è¢«ç»è¿ï¼é¤éæå®ä¸ä¸ªä¸åçãéè¶çº§ç¨æ·ï¼SUPERUSERï¼ææèã ä½ ä¹å¯ä»¥å° Schema ä¸­ææå½æ°ç EXECUTE æäºæ´é«æéçè§è²ï¼ 
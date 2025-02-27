Þ    4      ¼  G   \      x  3  y  0  ­    Þ  È   ì  d  µ	  ù         .     8  Ç  W     B   X       à   $      Ò     |   f  D  ã  <   (  @   e  3   ¦  >   Ú  7        Q  c   g  >   Ë     
  R   &  3   y  (   ­  R   Ö  N   )  &   x  +     2   Ë  5   þ  $   4     Y  ,   w  Z   ¤  &   ÿ  1   &     X     m       D        J     f       g      [     ;   d  X     ÿ   ù  -  ù     '"  ¼   9$  ^  ö$  §  U&  o   ý(  *   m)    )  F  ³*  ;   ú+  z   6,  Î   ±,  P  -     Ñ.  P   h/    ¹/  <   À0  $   ý0  (   "1  5   K1  2   1     ´1  h   Ë1  6   42     k2  9   2  -   »2  $   é2  N   3  E   ]3  !   £3  '   Å3  '   í3  '   4     =4     X4  /   v4  E   ¦4     ì4     5     '5     75  w   J5  ;   Â5     þ5     6     $6  [   76  D   6  6   Ø6                 ,   .   1          !                           *   	          '          $                               )         /   
   &   #      %                          +              "              2   4   -       3              (          0       
		# Apply with specifying work directory
		kusion apply -w /path/to/workdir

		# Apply with specifying arguments
		kusion apply -D name=test -D age=18

		# Apply with specifying setting file
		kusion apply -Y settings.yaml

		# Skip interactive approval of plan details before applying
		kusion apply --yes 
		# Check configuration in main.k
		kusion check main.k

		# Check main.k with arguments
		kusion check main.k -D name=test -D age=18

		# Check main.k with arguments from settings.yaml
		kusion check main.k -Y settings.yaml

		# Check main.k with work directory
		kusion check main.k -w appops/demo/dev 
		# Compile configuration in main.k into YAML format
		kusion compile main.k

		# Compile main.k with arguments
		kusion compile main.k -D name=test -D age=18

		# Compile main.k with arguments from settings.yaml
		kusion compile main.k -Y settings.yaml

		# Compile main.k with work directory
		kusion compile main.k -w appops/demo/dev

		# Compile with override
		kusion compile -O __main__:appConfiguration.image=nginx:latest -a

		# Compile main.k and write result into output.yaml
		kusion compile main.k -o output.yaml 
		# Get name and description of internal templates
		kusion init templates

		# Get templates from specific templates repository
		kusion init templates https://github.com/<user>/<repo> --online=true 
		# Initialize a project from internal templates
		kusion init

		# Initialize a project from default online templates
		kusion init --online=true

		# Initialize a project from a specific online template
		kusion init https://github.com/<user>/<repo> --online=true

		# Initialize a project from a specific local template
		kusion init /path/to/templates 
		# List all project and stack information in the current directory
		kusion ls

		# List all project and stack information in the specify directory
		kusion ls ./path/to/project_dir

		# List all project and stack information in the specify directory,
		# and output in a Tree format
		kusion ls ./path/to/project_dir --format=tree

		# List all project and stack information in the specify directory,
		# and output in a JSON format
		kusion ls ./path/to/project_dir --format=json

		# List all project and stack information in the specify directory,
		# and output in a YAML format
		kusion ls ./path/to/project_dir --format=yaml

		# List all project and stack by level, and output in a Tree format
		kusion ls ./path/to/project_dir --format=tree --level=1 
		# Print Kusion environment information
		kusion env

		# Print Kusion environment information as JSON format
		kusion env --json 
		# Print the kusion version
		kusion version 
		# The comparison object comes from the files
		kusion diff pod-1.yaml pod-2.yaml
		kusion diff pod-1.yaml pod-2.yaml --swap=true

		# The comparison object comes from the stdin
		cat pod-1.yaml > pod-full.yaml
		echo '---' >> pod-full.yaml
		cat pod-2.yaml >> pod-full.yaml
		cat pod-full.yaml | kusion diff - 
		Apply a series of resource changes within the stack.

		Create or update or delete resources according to the KCL files within a stack.
		By default, Kusion will generate an execution plan and present it for your approval before taking any action.

		You can check the plan details and then decide if the actions should be taken or aborted. 
		Check if KCL configurations in current directory ok to compile. 
		Compare files differences and display the delta.
		Support input file types are: YAML (http://yaml.org/) and JSON (http://json.org/). 
		Compile one or more KCL files.

		The KCL filename must be specified.
		You can specify a list of arguments to replace the placeholders defined in KCL,
		and output the compiled results to a file when using --output flag. 
		Delete resources by resource spec.

		Only KCL files are accepted. Only one type of arguments may be specified: filenames,
		resources and names, or resources and label selector.

		Note that the destroy command does NOT do resource version checks, so if someone submits an
		update to a resource right when you submit a destroy, their update will be lost along with the
		rest of the resource. 
		List all project and stack information in the current directory or the
		specify directory.
		The default output is in a human friendly format, and it also supports
		a variety of formatted structure output. 
		This command gets the descriptions and definitions of the templates which are used to initialize the project scaffolding. 
		This command initializes the scaffolding for a project, generating a project from an appointed template with correct structure.

		The scaffold templates can be retrieved from local or online. The built-in templates are used by default, self-defined templates are also supported by assigning the template repository path. Apply a configuration stack to resource(s) by work directory Automatically approve and perform the update after previewing it Automatically show plan details after previewing it Check if KCL configurations in current directory ok to compile Compare differences between input files <from> and <to> Compile KCL into YAML Custom params in JSON. If specified, it will be used as the template default value and skip prompts Destroy a configuration stack to resource(s) by work directory Disable dumping None values Force generating the scaffolding files, even if it would change the existing files Ignore order changes in lists. The default is false Initialize the scaffolding for a project Initialize with specified project name. If not specified, a prompt will request it Initialize with specified template. If not specified, a prompt will request it List all project and stack information List templates used to initialize a project Omit the dyff summary header. The default is false Preview a series of resource changes within the stack Print Kusion environment information Print the kusion version info Skip prompts and proceed with default values Sort from and to by kubernetes resource order(non standard behavior). The default is false Specify the command line setting files Specify the configuration override path and value Specify the operator Specify the output file Specify the output format of templates. If specified, only support json for now; if not, template name and description is given Specify the output style. One of human and raw. The default is human Specify the override option Specify the top-level argument Specify the work directory Swap <from> and <to> for comparison. Note that it is invalid when <from> is stdin. The default is false Use templates from online repository to initialize project, or use locally cached templates no-style sets to RawOutput mode and disables all of styling Project-Id-Version: gettext-go-examples-hello
Report-Msgid-Bugs-To: EMAIL
PO-Revision-Date: 2023-07-11 21:54+0800
Last-Translator: howieyuen <howieyuen@outlook.com>
Language-Team: 
Language: zh
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Poedit 3.3
 
		# æå®å·¥ä½ç®å½åºç¨
		kusion apply -w /path/to/workdir

		# æå®åæ°åºç¨
		kusion apply -D name=test -D age=18

		# æå®éç½®æä»¶åºç¨
		kusion apply -Y settings.yaml

		# åºç¨åè·³è¿è®¡åçäº¤äºå¼å®¡æ¹
		kusion apply âyes 
		# éªè¯ main.k ä¸­çéç½®
		kusion check main.k

		# ä½¿ç¨åæ°éªè¯ main.k
		kusion check main.k -D name=test -D age=18

		# ä½¿ç¨æ¥èª settings.yaml çåæ°éªè¯ main.k
		kusion check main.k -Y settings.yaml

		# ä½¿ç¨å·¥ä½ç®å½éªè¯ main.k
		kusion check main.k -w appops/demo/dev 
		# å° main.k ä¸­çéç½®ç¼è¯æ YAML æ ¼å¼
		kusion compile main.k

		# ä½¿ç¨åæ°ç¼è¯ main.k
		kusion compile main.k -D name=test -D age=18

		# ä½¿ç¨æ¥èª settings.yaml çåæ°ç¼è¯ main.k
		kusion compile main.k -Y settings.yaml

		# ä½¿ç¨å·¥ä½ç®å½ç¼è¯ main.k
		kusion compile main.k -w appops/demo/dev

		# Override å½å Stack ä¸­ç KCL éç½®
		kusion compile -O __main__:appConfiguration.image=nginx:latest -a

		# ç¼è¯ main.k å¹¶å°ç»æåå¥ output.yaml
		kusion compile main.k -o output.yaml 
		# è·ååç½®æ¨¡æ¿çåç§°åæè¿°
		kusion init templates

		# è·åæå®çå¨çº¿ä»åºä¸­çæ¨¡æ¿åè¡¨
		kusion init templates https://github.com/<user>/<repo> âonline=true 
		# ä»æ¬å°åç½®æ¨¡æ¿ä¸­åå§åä¸ä¸ª Project
		kusion init

		# ä»é»è®¤çå¨çº¿æ¨¡æ¿ä¸­åå§åä¸ä¸ª Project
		kusion init --online=true

		# ä»æå®çå¨çº¿æ¨¡æ¿åå§åä¸ä¸ª Project
		kusion init https://github.com/<user>/<repo> --online=true

		# ä»æå®çæ¬å°æ¨¡æ¿åå§åä¸ä¸ª Project
		kusion init /path/to/templates 
		# ååºå½åç®å½ä¸çææé¡¹ç®åå æ ä¿¡æ¯
		kusion ls

		# ååºæå®ç®å½ä¸­çææé¡¹ç®åå æ ä¿¡æ¯
		kusion ls ./path/to/project_dir

		# ååºæå®ç®å½ä¸çææé¡¹ç®åå æ ä¿¡æ¯ï¼å¹¶ä»¥ Tree æ ¼å¼è¾åº
		kusion ls ./path/to/project_dir --format=tree

		# ååºæå®ç®å½ä¸çææé¡¹ç®åå æ ä¿¡æ¯ï¼å¹¶ä»¥ JSON æ ¼å¼è¾åº
		kusion ls ./path/to/project_dir --format=json

		# ååºæå®ç®å½ä¸çææé¡¹ç®åå æ ä¿¡æ¯ï¼å¹¶ä»¥ YAML æ ¼å¼è¾åº
		kusion ls ./path/to/project_dir --format=yaml

		# éçº§ååºææé¡¹ç®åå æ ï¼å¹¶ä»¥ Tree æ ¼å¼è¾åº
		kusion ls ./path/to/project_dir --format=tree --level=1 
		# æå° Kusion ç¯å¢ä¿¡æ¯
		kusion env

		# ä»¥ JSON æ ¼å¼æå° Kusion ç¯å¢ä¿¡æ¯
		kusion env --json 
		# æå° kusion çæ¬
		kusion version 
		# æ¯è¾å¯¹è±¡æ¥èªæä»¶
		kusion diff pod-1.yaml pod-2.yaml
		kusion diff pod-1.yaml pod-2.yaml --swap=true

		# æ¯è¾å¯¹è±¡æ¥èªæ åè¾å¥
		cat pod-1.yaml > pod-full.yaml
		echo '---' >> pod-full.yaml
		cat pod-2.yaml >> pod-full.yaml
		cat pod-full.yaml | kusion diff - 
		å°ä¸ç³»åèµæºåæ´åºç¨å°å½åæ ä¸­ã

		å¨å½å Stack ä¸­æ ¹æ® KCL æä»¶åå»ºãæ´æ°ãå é¤èµæºã
		é»è®¤æåµä¸ï¼å¨éåä»»ä½è¡å¨ä¹åï¼kusionä¼çæä¸ä¸ªæ§è¡è®¡åï¼å¹¶æäº¤ç»ä½ æ¹åã

		ä½ å¯ä»¥æ£æ¥è®¡åè¯¦ç»ä¿¡æ¯ï¼ç¶åå³å®æ¯å¦åºéåæä¸­æ­¢è¿äºæä½ã 
		æ£æ¥å½åç®å½ä¸­ç KCL éç½®æ¯å¦å¯ä»¥ç¼è¯ã 
		æ¯è¾æä»¶å·®å¼å¹¶æ¾ç¤ºå¢éã
		æ¯æçæä»¶ç±»åæ: YAML (http://yaml.org/) å JSON (http://json.org/)ã 
		ç¼è¯ä¸ä¸ªæå¤ä¸ª KCL æä»¶ã

		å¿é¡»æå® KCL æä»¶åã
		ä½ å¯ä»¥æå®åæ°åè¡¨æ¥æ¿æ¢ KCL ä¸­å®ä¹çå ä½ç¬¦ï¼
		å¹¶å¨ä½¿ç¨ --output æ å¿æ¶å°ç¼è¯ç»æè¾åºå°æä»¶ã 
		éè¿èµæºè§çº¦å é¤èµæºã

		åªæ¥å KCL æä»¶ãåªè½æå®ä¸ç§ç±»åçåæ°ï¼æä»¶åãèµæºãåç§°ãèµæºææ ç­¾éæ©å¨ã

		è¯·æ³¨æï¼destroy å½ä»¤ä¸ä¼è¿è¡èµæºçæ¬æ£æ¥ï¼
		å æ­¤å¦ææäººå¨ä½ æäº¤éæ¯æ¶æäº¤äºå¯¹èµæºçæ´æ°ï¼
		ä»ä»¬çæ´æ°å°ä¸èµæºä¸èµ·ä¸¢å¤±ã 
		ååºå½åç®å½ææå®ç®å½ä¸­çææé¡¹ç®åå æ ä¿¡æ¯ã
		é»è®¤è¾åºæ¯äººæ§åçæ ¼å¼ï¼ä¹æ¯æå¤ç§æ ¼å¼çç»æè¾åºã 
		è¯¥æä»¤è·åç¨äºåå§åProject èææ¶çæ¨¡æ¿çæè¿°åå®ä¹ã 
		è¯¥æä»¤ç¨äºåå§åä¸ä¸ª Project èææ¶ï¼ä»éå®çæ¨¡æ¿çæå·å¤æ­£ç¡®ç»æç Project.

		èææ¶æ¨¡æ¿å¯ä»¥ä»æ¬å°æèçº¿ä¸è·åãé»è®¤ä½¿ç¨åç½®æ¨¡æ¿ï¼è¥éè¦ä½¿ç¨èªå®ä¹çæ¨¡æ¿ï¼éè¦æå®æ¨¡æ¿ä»åºçå°åã éè¿å·¥ä½ç®å½å°éç½®æ åºç¨å°ä¸ä¸ªæå¤ä¸ªèµæº é¢è§åèªå¨å®¡æ¹å¹¶åºç¨æ´æ° é¢è§åèªå¨å±ç¤º apply è®¡åç»è æ£æ¥å½åç®å½ä¸­ç KCL éç½®æ¯å¦å¯ä»¥ç¼è¯ æ¯è¾è¾å¥æä»¶ <from> å <to> ä¹é´çå·®å¼ å° KCL ç¼è¯æ YAML JSON æ ¼å¼çèªå®ä¹åæ°ãè¥æå®ï¼é£ä¹ä¼ç¨å¶ä½ä¸ºé»è®¤çæ¨¡æ¿åæ°ï¼å¹¶è·³è¿æç¤º éè¿å·¥ä½ç®å½éæ¯å·²åºç¨å°èµæºçéç½®æ  ç¦ç¨è½¬å¨ None å¼ å¼ºå¶çæèææ¶æä»¶ï¼å³ä½¿ä¼æ´æ¹ç°ææä»¶ å¿½ç¥åè¡¨ä¸­çé¡ºåºååï¼é»è®¤ä¸ºå¦ åå§åä¸ä¸ª Project çèææ¶ ç¨æå®ç Project åç§°åå§åãè¥ä¸æå®ï¼å°ææç¤ºè¯·æ±è·å ç¨æå®çæ¨¡æ¿åå§åãè¥ä¸æå®ï¼å°ææç¤ºè¯·æ±è·å ååºææé¡¹ç®åå æ ä¿¡æ¯ ååºç¨äºåå§å Project çæ¨¡æ¿ çç¥ dyff æè¦æ é¢ï¼é»è®¤ä¸ºå¦ é¢è§å æ ä¸­çä¸ç³»åèµæºæ´æ¹ æå° Kusion ç¯å¢ä¿¡æ¯ æå° kusion ççæ¬ä¿¡æ¯ è·³è¿æç¤ºï¼ä½¿ç¨é»è®¤å¼åå§å Project æ kubernetes èµæºé¡ºåºæåºï¼éæ åè¡ä¸ºï¼ãé»è®¤ä¸ºå¦ æå®å½ä»¤è¡éç½®æä»¶ æå®éç½®è¦çè·¯å¾åå¼ æå®æä½äºº æå®è¾åºæä»¶ æå®æ¨¡æ¿çè¾åºæ ¼å¼ãè¥æå®ï¼ç°å¨ä»æ¯æ jsonï¼è¥ä¸æå®ï¼é£ä¹å°æå°æ¨¡æ¿çåç§°åæè¿° æå®è¾åºé£æ ¼ï¼human å raw ä¹ä¸ï¼é»è®¤å¼ human æå®è¦çéé¡¹ æå®é¡¶çº§åæ° æå®å·¥ä½ç®å½ äº¤æ¢ <from> å <to> è¿è¡æ¯è¾ãæ³¨æ <from> ä¸ºæ åè¾å¥æ¶æ æãé»è®¤ä¸ºå¦ ä½¿ç¨çº¿ä¸æ¨¡æ¿åå§å Projectï¼å¦åä½¿ç¨æ¬å°ç¼å­æ¨¡æ¿ no-style è®¾ç½®åå§è¾åºæ¨¡å¼å¹¶ç¦ç¨æææ ·å¼ 
<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="rcpv_usm" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1543324339605">
<hook NAME="AutomaticEdgeColor" COUNTER="4"/>
<edge COLOR="#808080"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
<cloud COLOR="#f0f0f0" SHAPE="ARC"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
<cloud COLOR="#f0f0f0" SHAPE="ARC"/>
</stylenode>
<stylenode TEXT="lsyh" COLOR="#990000">
<font NAME="SansSerif" SIZE="10" BOLD="true"/>
<edge COLOR="#808080"/>
</stylenode>
<stylenode TEXT="home" COLOR="#215800">
<font SIZE="10" BOLD="true"/>
</stylenode>
<stylenode TEXT="ohome" COLOR="#120088" BACKGROUND_COLOR="#fdfd51">
<font NAME="SansSerif" SIZE="12" BOLD="true"/>
<cloud COLOR="#fdfd51" SHAPE="ROUND_RECT"/>
<edge COLOR="#808080"/>
</stylenode>
<stylenode TEXT="activity" COLOR="#102292" BACKGROUND_COLOR="#88d8d9" STYLE="bubble">
<font SIZE="12" BOLD="true"/>
</stylenode>
<stylenode TEXT="goal" BACKGROUND_COLOR="#b6e174">
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="activityDetailHiPrio" BACKGROUND_COLOR="#e9f664">
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="activityDetailLoPrio" BACKGROUND_COLOR="#f4f8d3"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font NAME="Monospaced" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font BOLD="true"/>
<edge COLOR="#808080"/>
<cloud COLOR="#f0f0f0" SHAPE="ARC"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font NAME="SansSerif" SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="" POSITION="right" ID="ID_1670358467" CREATED="1520139829031" MODIFIED="1520494049400">
<edge COLOR="#808080"/>
<node TEXT="legend" FOLDED="true" ID="ID_737831229" CREATED="1520493781952" MODIFIED="1520493784044">
<node TEXT="Main Activity" STYLE_REF="activity" ID="ID_308101867" CREATED="1520493904408" MODIFIED="1520493955915">
<node TEXT="Goal-level Activity" STYLE_REF="goal" ID="ID_846205330" CREATED="1520493935385" MODIFIED="1539776446347">
<node TEXT="(Sub)Activity,&#xa;High Prio" STYLE_REF="activityDetailHiPrio" ID="ID_1802054139" CREATED="1520493958162" MODIFIED="1520603437587">
<node TEXT="(Sub)Activity" STYLE_REF="activityDetailHiPrio" ID="ID_1111944986" CREATED="1520493958162" MODIFIED="1520493967782">
<node TEXT="(Sub)Activity" STYLE_REF="activityDetailHiPrio" FOLDED="true" ID="ID_1566299983" CREATED="1520493958162" MODIFIED="1520493967782">
<node TEXT="Screenshot" LOCALIZED_STYLE_REF="default" FOLDED="true" ID="ID_950269260" CREATED="1520313328951" MODIFIED="1520494091547">
<icon BUILTIN="video"/>
<node TEXT="" ID="ID_1039037170" CREATED="1520347439368" MODIFIED="1520347457623" LINK="https://projects.invisionapp.com/share/HPFWXO7N67F#/screens/279296838">
<hook URI="wat_welcome.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="data details" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1232191645" CREATED="1520237711657" MODIFIED="1520494253120">
<node TEXT="messages" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_534809770" CREATED="1520494253896" MODIFIED="1520494262405"/>
<node TEXT="schemas" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1830557443" CREATED="1520494256233" MODIFIED="1520494262403"/>
<node TEXT="etc." LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1570194783" CREATED="1520494259517" MODIFIED="1520494262399"/>
</node>
<node TEXT="Communication&#xa;(REST call, publish, subs, etc.)&#xa;GET /game/rounds/{category}/next" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_665411990" CREATED="1520142165332" MODIFIED="1520603387729">
<node TEXT="wat-be config:" ID="ID_491717763" CREATED="1520249627330" MODIFIED="1520249633943">
<node TEXT="numQuestions: 20&#xa;playTime: 60" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_417982178" CREATED="1520249482915" MODIFIED="1520249626036"/>
</node>
<node TEXT="req:" ID="ID_1703333501" CREATED="1520249554822" MODIFIED="1520249556740">
<node TEXT="category: &quot;Fun Facts&quot;" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_491328958" CREATED="1520249578886" MODIFIED="1520249603002"/>
</node>
<node TEXT="resp:" ID="ID_1925430968" CREATED="1520249552304" MODIFIED="1520249554316">
<node TEXT="200" OBJECT="java.lang.Long|200" ID="ID_337548950" CREATED="1520249662387" MODIFIED="1520249663933">
<node TEXT="language: EN&#xa;category: Fun Facts&#xa;playTime: 60&#xa;questions:&#xa;- ...." LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_809335651" CREATED="1520246624639" MODIFIED="1520246636900"/>
</node>
<node TEXT="40X" LOCALIZED_STYLE_REF="default" ID="ID_532710909" CREATED="1520142168160" MODIFIED="1520249676044">
<node TEXT="wrong or missing category name" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1039797646" CREATED="1520249688800" MODIFIED="1520249698124"/>
<node TEXT="more questions left in this category" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_997983145" CREATED="1520249678296" MODIFIED="1520249698480"/>
</node>
</node>
<node TEXT="Create endpoint descriptor with mock data" LOCALIZED_STYLE_REF="default" ID="ID_229092275" CREATED="1520494641604" MODIFIED="1520603392148">
<icon BUILTIN="list"/>
</node>
<node TEXT="Create microservice for endpoint implementation" LOCALIZED_STYLE_REF="default" ID="ID_1362251284" CREATED="1520494704714" MODIFIED="1520603392610">
<icon BUILTIN="list"/>
</node>
<node TEXT="..." LOCALIZED_STYLE_REF="default" ID="ID_1670563078" CREATED="1520494739711" MODIFIED="1520603393138">
<icon BUILTIN="list"/>
</node>
</node>
<node TEXT="Story level JIRA issue" LOCALIZED_STYLE_REF="default" ID="ID_658413280" CREATED="1520494641604" MODIFIED="1520603370818">
<icon BUILTIN="list"/>
<node TEXT="Task level JIRA issue" ID="ID_984343306" CREATED="1520603332864" MODIFIED="1520603342404">
<icon BUILTIN="executable"/>
</node>
<node TEXT="Task level JIRA issue" ID="ID_950143506" CREATED="1520603332864" MODIFIED="1520603342404">
<icon BUILTIN="executable"/>
</node>
<node TEXT="Task level JIRA issue" ID="ID_314331" CREATED="1520603332864" MODIFIED="1520603342404">
<icon BUILTIN="executable"/>
</node>
</node>
</node>
<node TEXT="(Sub)Activity" STYLE_REF="activityDetailHiPrio" ID="ID_247595490" CREATED="1520493958162" MODIFIED="1520493967782"/>
</node>
<node TEXT="(Sub)Activity, Low Prio" STYLE_REF="activityDetailLoPrio" FOLDED="true" ID="ID_1651183766" CREATED="1520493958162" MODIFIED="1520493998044">
<node TEXT="(Sub)Activity, Low Prio" STYLE_REF="activityDetailLoPrio" ID="ID_1692114228" CREATED="1520493958162" MODIFIED="1520493998044"/>
<node TEXT="(Sub)Activity, Low Prio" STYLE_REF="activityDetailLoPrio" ID="ID_1068914320" CREATED="1520493958162" MODIFIED="1520493998044"/>
</node>
<node TEXT="(Sub)Activity" STYLE_REF="activityDetailHiPrio" ID="ID_63503270" CREATED="1520493958162" MODIFIED="1520493967782"/>
</node>
<node TEXT="(Sub)Activity" STYLE_REF="activityDetailHiPrio" ID="ID_951391324" CREATED="1520493958162" MODIFIED="1520493967782"/>
</node>
</node>
<node TEXT="action,&#xa;send/receive message&#xa;REST call" STYLE_REF="lsyh" ID="ID_1105223393" CREATED="1526543473449" MODIFIED="1526543540096"/>
<node TEXT="data" STYLE_REF="home" ID="ID_1494064599" CREATED="1526543504595" MODIFIED="1526543511357"/>
<node TEXT="selector" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1322977737" CREATED="1526543506082" MODIFIED="1526543509332"/>
<node TEXT="notes, comments" ID="ID_1065101989" CREATED="1526543553904" MODIFIED="1526543575638"/>
</node>
<node TEXT="Users and Goals" ID="ID_526900954" CREATED="1538410050459" MODIFIED="1538410753822">
<node TEXT="Audience" FOLDED="true" ID="ID_1997196302" CREATED="1538410068283" MODIFIED="1542631618738">
<icon BUILTIN="male1"/>
<node TEXT="Can watch screencasts made by rcpv and screencast recorder" STYLE_REF="goal" ID="ID_1207768367" CREATED="1538410278535" MODIFIED="1542631987470"/>
<node TEXT="Can watch presentations on-line, from a web URL" STYLE_REF="goal" ID="ID_78170500" CREATED="1538410267851" MODIFIED="1542631930414"/>
<node TEXT="Can execute a presentation locally, using the rcpv tools" STYLE_REF="goal" ID="ID_1927368544" CREATED="1538410355866" MODIFIED="1542631950449"/>
</node>
<node TEXT="Author" FOLDED="true" ID="ID_1943919614" CREATED="1538410072184" MODIFIED="1542631631694">
<icon BUILTIN="male1"/>
<node TEXT="The author of the presentation" ID="ID_339072346" CREATED="1542631801853" MODIFIED="1542631807723"/>
<node TEXT="Can create presentation content independently from the presenter tool" STYLE_REF="goal" ID="ID_315920880" CREATED="1538410635306" MODIFIED="1542631839736"/>
<node TEXT="Can test-run the presentation, step-by-step" STYLE_REF="goal" ID="ID_748406441" CREATED="1542631848366" MODIFIED="1542631873775"/>
<node TEXT="Can present manually the content" STYLE_REF="goal" ID="ID_632587184" CREATED="1542631840009" MODIFIED="1542631876671"/>
<node TEXT="Can make the presentation automatically executed with pause and resume features" STYLE_REF="goal" ID="ID_1557954544" CREATED="1542631885805" MODIFIED="1542631914223"/>
</node>
<node TEXT="Presentation Controller (PCTRL)" ID="ID_208442494" CREATED="1538410072184" MODIFIED="1542633744335">
<icon BUILTIN="executable"/>
<node TEXT="A command-line tool to start, pause, resume and stop presentations" ID="ID_50697790" CREATED="1542631683468" MODIFIED="1542631755593">
<node TEXT="rcpv-ctrl" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1044761661" CREATED="1542631678141" MODIFIED="1542631798820"/>
</node>
<node TEXT="Can access and remotely control rcpv" STYLE_REF="goal" ID="ID_1166523307" CREATED="1542631997038" MODIFIED="1542632027435"/>
<node TEXT="Can get commands from Author" STYLE_REF="goal" ID="ID_1991666643" CREATED="1542632017063" MODIFIED="1542632027023"/>
</node>
<node TEXT="Presentation Viewer (PV)" FOLDED="true" ID="ID_1935954318" CREATED="1542631662441" MODIFIED="1542633726837">
<icon BUILTIN="executable"/>
<node TEXT="Remote Controlled Presentation Viewer application" ID="ID_438065222" CREATED="1542631779147" MODIFIED="1542631791838">
<node TEXT="rcpv" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_34060378" CREATED="1542631671806" MODIFIED="1542631799476"/>
</node>
<node TEXT="It also can act as Presentation content Provider" ID="ID_1025419412" CREATED="1542632098957" MODIFIED="1542632109758"/>
<node TEXT="Can access the presentation content" STYLE_REF="goal" ID="ID_679406484" CREATED="1542632118846" MODIFIED="1542632151614"/>
<node TEXT="Can access the narratives correspond to the presentations" STYLE_REF="goal" ID="ID_50704010" CREATED="1542632127404" MODIFIED="1542632151344"/>
</node>
<node TEXT="Presentation Content Provider (PCP)" FOLDED="true" ID="ID_59992545" CREATED="1542631693276" MODIFIED="1542633715836">
<icon BUILTIN="executable"/>
<node TEXT="A HTTP(S) content server, that provides the presentation content and the narratives" ID="ID_1252091066" CREATED="1542632048977" MODIFIED="1542632075465"/>
<node TEXT="Can acess to the presentation content files" STYLE_REF="goal" ID="ID_976418523" CREATED="1542632078867" MODIFIED="1542632162190"/>
</node>
<node TEXT="Screencast Recorder (SR)" FOLDED="true" ID="ID_1890693203" CREATED="1542631758141" MODIFIED="1542633722205">
<icon BUILTIN="executable"/>
<node TEXT="General Purpose screencast recorder" ID="ID_1484837805" CREATED="1542632175054" MODIFIED="1542632185274"/>
<node TEXT="Is able to record full-screen, or window, includng animation, and audio." STYLE_REF="goal" ID="ID_766944131" CREATED="1542632241438" MODIFIED="1542632268687"/>
</node>
<node TEXT="Browser" FOLDED="true" ID="ID_1560607996" CREATED="1542632187871" MODIFIED="1542632192103">
<icon BUILTIN="executable"/>
<node TEXT="Browser that displays the remotely controlled presentation" ID="ID_1728587089" CREATED="1542632192989" MODIFIED="1542632210079"/>
<node TEXT="Is able to display the presentation content (HTML, CSS, JS, SVG)" STYLE_REF="goal" ID="ID_82806818" CREATED="1542632220317" MODIFIED="1542632239056"/>
</node>
<node TEXT="Text Editor" FOLDED="true" ID="ID_1092229895" CREATED="1542632378363" MODIFIED="1542632387624">
<icon BUILTIN="executable"/>
<node TEXT="General Purpose plain text editor to create and maintain presentation content" ID="ID_894848716" CREATED="1542632389742" MODIFIED="1542632406142"/>
</node>
<node TEXT="SVG Editor" FOLDED="true" ID="ID_938688673" CREATED="1542632380893" MODIFIED="1542632387622">
<icon BUILTIN="executable"/>
<node TEXT="SVG editor, to create and maintain static and animated SVG graphics" ID="ID_1578725228" CREATED="1542632412798" MODIFIED="1542632430767"/>
</node>
</node>
<node TEXT="Activities" ID="ID_34375269" CREATED="1520494043951" MODIFIED="1538410858207">
<node TEXT="Setup PV and PCP" STYLE_REF="activity" FOLDED="true" ID="ID_1393988236" CREATED="1542633877964" MODIFIED="1542633898965">
<node TEXT="Install PV" STYLE_REF="goal" ID="ID_1446775353" CREATED="1542634179028" MODIFIED="1542634215953"/>
<node TEXT="Install PCP" STYLE_REF="goal" ID="ID_238955408" CREATED="1542634189778" MODIFIED="1542634214675">
<node TEXT="Configure the Presentation Content Provider" STYLE_REF="activityDetailHiPrio" ID="ID_1390341053" CREATED="1542633660296" MODIFIED="1542634160216">
<node TEXT="alt" ID="ID_689907523" CREATED="1542633681116" MODIFIED="1542633685189">
<node TEXT="Use external PCP" STYLE_REF="activityDetailHiPrio" ID="ID_586031492" CREATED="1542633686041" MODIFIED="1542633841236"/>
<node TEXT="Use rcpv as PCP" STYLE_REF="activityDetailHiPrio" ID="ID_1463872512" CREATED="1542633698342" MODIFIED="1542633841775">
<node TEXT="Set the environment variable to point to the content root" STYLE_REF="activityDetailHiPrio" ID="ID_1306752135" CREATED="1542633767196" MODIFIED="1542633842640">
<node TEXT="EASER_...=" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1140870984" CREATED="1542633808463" MODIFIED="1542633817807">
<node TEXT="TBD" STYLE_REF="lsyh" ID="ID_432390310" CREATED="1542633819313" MODIFIED="1542633828657">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Create Content" STYLE_REF="activity" FOLDED="true" ID="ID_1419007731" CREATED="1520140057446" MODIFIED="1542634148923">
<node TEXT="" ID="ID_684987782" CREATED="1538419039758" MODIFIED="1538419075371">
<icon BUILTIN="males"/>
<node TEXT="Author" ID="ID_1262568884" CREATED="1538410052279" MODIFIED="1542632461733">
<icon BUILTIN="male1"/>
</node>
<node TEXT="Text Editor" ID="ID_1030545830" CREATED="1542632378363" MODIFIED="1542632387624">
<icon BUILTIN="executable"/>
</node>
<node TEXT="SVG Editor/Animator" ID="ID_553450520" CREATED="1542632380893" MODIFIED="1542634539671">
<icon BUILTIN="executable"/>
</node>
</node>
<node TEXT="Author create content via editors" STYLE_REF="goal" ID="ID_1122682746" CREATED="1520139835415" MODIFIED="1542632477579" MIN_WIDTH="1">
<edge COLOR="#808080"/>
<node TEXT="Author creates HTML/SVG content using the Text Editor, and SVG Editor." STYLE_REF="activityDetailHiPrio" ID="ID_1020580194" CREATED="1520237263853" MODIFIED="1542634472967">
<node TEXT="Includes the images and other resources" ID="ID_1889646883" CREATED="1542634474367" MODIFIED="1542634485345"/>
<node TEXT="Every state has a corresponding unique URI" ID="ID_291982798" CREATED="1542634442674" MODIFIED="1542634460793"/>
</node>
<node TEXT="Author formats the content using CSS" STYLE_REF="activityDetailHiPrio" ID="ID_1553330297" CREATED="1520237263853" MODIFIED="1542632518721"/>
<node TEXT="Author makes the animation in SVG content, with an SVG editor/animator tool." STYLE_REF="activityDetailHiPrio" ID="ID_1936162589" CREATED="1542634490964" MODIFIED="1542634545811"/>
<node TEXT="Author writes narratives to the slides" STYLE_REF="activityDetailHiPrio" ID="ID_948671142" CREATED="1542013787496" MODIFIED="1542634585361">
<node TEXT="Define the URI" STYLE_REF="activityDetailHiPrio" ID="ID_921901805" CREATED="1542634604468" MODIFIED="1542634628239"/>
<node TEXT="Write text to speech" STYLE_REF="activityDetailHiPrio" ID="ID_1203976462" CREATED="1542634596014" MODIFIED="1542634627778"/>
<node TEXT="Define (optional) scheduling (delays)" STYLE_REF="activityDetailHiPrio" ID="ID_1789241325" CREATED="1542634586213" MODIFIED="1542884520727"/>
</node>
</node>
<node TEXT="Author deploys presentation content to PSP" STYLE_REF="goal" ID="ID_1508201669" CREATED="1542632298345" MODIFIED="1542634136393">
<node TEXT="Place the whole presentation content under the Presentation Content Provider server (incl. incl. the images and other resources)" STYLE_REF="activityDetailHiPrio" ID="ID_734622572" CREATED="1542633056159" MODIFIED="1542633132342"/>
<node TEXT="Add a new entry to the presentation index of the Presentation Content Provider server." STYLE_REF="activityDetailHiPrio" ID="ID_1202857476" CREATED="1542633135747" MODIFIED="1542633177522">
<node TEXT="/index.json" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1928091065" CREATED="1542633168159" MODIFIED="1542633172329">
<node TEXT="{&#xa;  &quot;&lt;presentation-name&gt;&quot;: &quot;&lt;relative-or-absolute-URI-to-the-presentation&gt;&quot;,&#xa;  &quot;rcpv-intro&quot;: &quot;/rcpv-intro/&quot;,&#xa;  &quot;rcpv-tutorial&quot;: &quot;/rcpv-tutorial/&quot;,&#xa;  &quot;stefanie-co&quot;: &quot;https://prezi.com/p/ivixz9_olf_n/stefanie-co-2018/&quot;&#xa;}" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1352679292" CREATED="1542633037647" MODIFIED="1542633565610"/>
</node>
</node>
</node>
</node>
<node TEXT="Execute Presentation" STYLE_REF="activity" ID="ID_893104254" CREATED="1542632881726" MODIFIED="1542634404383">
<node TEXT="" ID="ID_1716152872" CREATED="1538419039758" MODIFIED="1538419075371">
<icon BUILTIN="males"/>
<node TEXT="Author" ID="ID_231257627" CREATED="1538410052279" MODIFIED="1542633184372">
<icon BUILTIN="male1"/>
</node>
<node TEXT="Presentation Content Provider" ID="ID_1629785493" CREATED="1538410052279" MODIFIED="1542633194521">
<icon BUILTIN="male1"/>
</node>
</node>
<node TEXT="Manually Run Presentation" STYLE_REF="goal" ID="ID_520010312" CREATED="1542632311597" MODIFIED="1542632917712"/>
<node TEXT="Automatically Run Presentation" STYLE_REF="goal" ID="ID_1056286665" CREATED="1542632327035" MODIFIED="1542632918115">
<node TEXT="Author Starts the PCP" STYLE_REF="activityDetailHiPrio" ID="ID_884535153" CREATED="1542884541398" MODIFIED="1542884695826">
<node TEXT="alt" ID="ID_1615746920" CREATED="1542884669784" MODIFIED="1542884692303">
<node TEXT="Use on-line PCP" STYLE_REF="activityDetailHiPrio" ID="ID_1863463732" CREATED="1542884596545" MODIFIED="1542884701354"/>
<node TEXT="Start easer (or other) HTTP server container" STYLE_REF="activityDetailHiPrio" ID="ID_1533799448" CREATED="1542884813194" MODIFIED="1542884834054">
<node TEXT="cd content_root" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_472949439" CREATED="1542884840156" MODIFIED="1542884851220"/>
<node TEXT="http-server -p 8090" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_626492917" CREATED="1542884851773" MODIFIED="1542884865950"/>
</node>
<node TEXT="Start locally installed http-server" STYLE_REF="activityDetailHiPrio" ID="ID_708582802" CREATED="1542884679763" MODIFIED="1542884834334">
<node TEXT="docker run easer -v ...." LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1734727043" CREATED="1542884884677" MODIFIED="1542884899238"/>
</node>
</node>
</node>
<node TEXT="Author Starts the PV" STYLE_REF="activityDetailHiPrio" ID="ID_1356377440" CREATED="1542884659113" MODIFIED="1542884936964">
<node TEXT="alt" ID="ID_202606397" CREATED="1542884938957" MODIFIED="1542884939794">
<node TEXT="Use on-line PV" STYLE_REF="activityDetailHiPrio" ID="ID_195843161" CREATED="1542884917887" MODIFIED="1542884937779"/>
<node TEXT="Start rcpv containers using docker-compose" STYLE_REF="activityDetailHiPrio" ID="ID_1628862238" CREATED="1542884941750" MODIFIED="1542885023023">
<node TEXT="docker-compose rcpv-services.yml up" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1101453677" CREATED="1542885023854" MODIFIED="1542885045360"/>
</node>
</node>
</node>
<node TEXT="alt" ID="ID_476803512" CREATED="1542634255139" MODIFIED="1542634258286">
<node TEXT="via cli tool" ID="ID_1311944776" CREATED="1542634258828" MODIFIED="1542634264403">
<node TEXT="Author orders the rcpv to do the presentation via the PCTL" STYLE_REF="activityDetailHiPrio" FOLDED="true" ID="ID_178629948" CREATED="1542885051804" MODIFIED="1542885186360">
<node TEXT="rcpv-ctrl present -u http://&lt;pv.server.hostname&gt; -n &lt;presentation-name&gt;" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_732146248" CREATED="1542885187354" MODIFIED="1542885307146"/>
<node TEXT="The PCTL retrieves the presentations index from the content_root of the PCP" STYLE_REF="activityDetailHiPrio" ID="ID_1547095708" CREATED="1542886078454" MODIFIED="1542886212922">
<node TEXT="req." ID="ID_939774345" CREATED="1542886336919" MODIFIED="1542886339590">
<node TEXT="GET /index.json" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1792486812" CREATED="1542886132731" MODIFIED="1542886140854"/>
</node>
<node TEXT="resp:" ID="ID_585502149" CREATED="1542886339868" MODIFIED="1542886341771">
<node TEXT="demo: /demo/&#xa;starwars: /star-wars/&#xa;rcpv: /rcpv-intro/" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1781261281" CREATED="1542886377869" MODIFIED="1542886444921"/>
</node>
</node>
<node TEXT="The PCTL finds the relative URI of the presentation by its name in the index." STYLE_REF="activityDetailHiPrio" ID="ID_1131352549" CREATED="1542886146395" MODIFIED="1542886180668"/>
<node TEXT="The PCTL retrieves the narrative of the presentation identified by its name" STYLE_REF="activityDetailHiPrio" ID="ID_1708093019" CREATED="1542886181176" MODIFIED="1542886264638">
<node TEXT="req:" ID="ID_1686250540" CREATED="1542886394158" MODIFIED="1542886395694">
<node TEXT="GET /&lt;presentation-path&gt;/narrative.json" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_652005953" CREATED="1542886234702" MODIFIED="1542886251186"/>
</node>
<node TEXT="resp:" ID="ID_777775775" CREATED="1542886339868" MODIFIED="1542886341771">
<node TEXT="- uri: 1.html&#xa;  text: The first page&#xa;  duration: 300&#xa;- uri: 2.html&#xa;  text: The second page&#xa;  duration: 300&#xa;- uri: 3.html&#xa;  text: The third page&#xa;  duration: 300" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1828407654" CREATED="1542886377869" MODIFIED="1542886383578"/>
</node>
</node>
<node TEXT="The PCTL iteratively commands the PV to execute the presentation step:" STYLE_REF="activityDetailHiPrio" ID="ID_627083008" CREATED="1542886265732" MODIFIED="1542886586238">
<node TEXT="Send message to show the page" STYLE_REF="activityDetailHiPrio" ID="ID_1215535143" CREATED="1542886322343" MODIFIED="1542886586239">
<node TEXT="{&#xa;    &quot;topic&quot;:&quot;presentation&quot;,&#xa;    &quot;type&quot;:&quot;show&quot;,&#xa;    &quot;timestamp&quot;:1542897512767,&#xa;    &quot;payload&quot;:&quot;http://localhost:3002/demo/3.html&quot;&#xa;}" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1616314026" CREATED="1542897729023" MODIFIED="1542897759288"/>
</node>
<node TEXT="Send message to speak the text" STYLE_REF="activityDetailHiPrio" ID="ID_578614076" CREATED="1542886472110" MODIFIED="1542886586239">
<node TEXT="{&#xa;    &quot;topic&quot;:&quot;speak&quot;,&#xa;    &quot;type&quot;:&quot;say&quot;,&#xa;    &quot;timestamp&quot;:1542897512767,&#xa;    &quot;payload&quot;:&quot;This is the narrative text to slide 3&quot;&#xa;}" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1960234694" CREATED="1542897685610" MODIFIED="1542897706743"/>
</node>
<node TEXT="Wait for the text to be spoken" STYLE_REF="activityDetailHiPrio" ID="ID_1907429479" CREATED="1542886565477" MODIFIED="1542886586239"/>
<node TEXT="Wait until the delay (optional)" STYLE_REF="activityDetailHiPrio" ID="ID_1951412784" CREATED="1542886491406" MODIFIED="1542886586239"/>
</node>
</node>
</node>
<node TEXT="via the web frontend" ID="ID_1404568438" CREATED="1542634264887" MODIFIED="1542634284805"/>
</node>
</node>
</node>
<node TEXT="Record Presentation" STYLE_REF="activity" ID="ID_313177136" CREATED="1542632334296" MODIFIED="1542632343602">
<node TEXT="" ID="ID_307252111" CREATED="1538419039758" MODIFIED="1538419075371">
<icon BUILTIN="males"/>
<node TEXT="TBD" ID="ID_475083521" CREATED="1538410052279" MODIFIED="1542013878954">
<icon BUILTIN="male1"/>
</node>
<node TEXT="TBD" ID="ID_1819666167" CREATED="1538410052279" MODIFIED="1542013881002">
<icon BUILTIN="male1"/>
</node>
</node>
<node TEXT="Record with manual start and stop" STYLE_REF="activityDetailHiPrio" ID="ID_830117793" CREATED="1542634308113" MODIFIED="1542634335108"/>
<node TEXT="Record with automatic start and stop" STYLE_REF="activityDetailLoPrio" ID="ID_1807793112" CREATED="1542634323493" MODIFIED="1542634333393"/>
</node>
</node>
<node TEXT="Q&amp;A" ID="ID_1053308740" CREATED="1524725064196" MODIFIED="1524725066375">
<node TEXT="Collect here the questions to discuss with the Product Owner, as well as the answers you got." LOCALIZED_STYLE_REF="default" ID="ID_975047596" CREATED="1542013446361" MODIFIED="1542013480129"/>
</node>
</node>
</node>
</map>

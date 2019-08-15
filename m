X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1304" "Thursday" "15" "August" "2019" "13:37:57" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhSEmNwChg-TCRYpyUGZWOM37zofntrsMk_WSEBbeZW3Vg@mail.gmail.com>" "36" "[oss-security] CVE-2019-10140 - linux kernel - system panic in overlayfs directory creation." nil nil nil "8" "2019081503:37:57" "[oss-security] CVE-2019-10140 - linux kernel - system panic in overlayfs directory creation." (number mark "U       wmealing@red Aug 15   36/1304  " thread-indent "\"[oss-security] CVE-2019-10140 - linux kernel - system panic in overlayfs directory creation.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-10140 - linux kernel - system panic in overlayfs directory creation." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7301 invoked by uid 550); 15 Aug 2019 03:38:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7283 invoked from network); 15 Aug 2019 03:38:20 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PA779+gQVFPaSY4KvM8/tTqgx/iIMzSny5zSOhRe3AI=;
        b=UMVr1+M6DBxgibszMk+8qwNy9AP7f5/uBr5fP9oINOXz7Ao0rdeJ1mrkr+b80FFawJ
         WrKR2wa4bBVfBC1WnpgnyCFVj6YA0b32KNJatKFwfAGUjK79v6yTWczVGMfbiD1ZakD9
         +snJ1izpv9BmvrB5tvAobSEhjWqcx4fwJfW5HKagYEkz+JsyXSGu8spzHWws3WnD2g87
         bXp47k3FFXLnhUFXic6Q6DJKMHUulusezsdawryPjxW2qrBIjEA+UTdRPbjsFg+OXg0A
         1RIWknAmTmqGsVv8gUp9ddJO6PV0O+kES2F2Ged9Rc+08NBDEipEuh3MZflp3Qmw6hK9
         Vjaw==
X-Gm-Message-State: APjAAAU2hYNNY4o4IA6jZwHLiXTSfiZBLmicnzAjfrEl6LwQVa4KyzDg
	IJt+aco07ln4ADu0avfFmuFEOM4PanigG+unH9a5VvR9ay8=
X-Google-Smtp-Source: APXvYqz/hmQ3Pfa1wmZQ1Lo8NNenpf36APF9O0cLRO7tU4knrs09+HksxP0MVP6EaqFfYIw2SoXs26JRPc8WWVNePEs=
X-Received: by 2002:a02:9981:: with SMTP id a1mr2936872jal.17.1565840288699;
 Wed, 14 Aug 2019 20:38:08 -0700 (PDT)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Thu, 15 Aug 2019 13:37:57 +1000
Message-ID: <CALJHwhSEmNwChg-TCRYpyUGZWOM37zofntrsMk_WSEBbeZW3Vg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000002f19b005901f9a12"
Subject: [oss-security] CVE-2019-10140 - linux kernel - system panic in overlayfs directory creation.

--0000000000002f19b005901f9a12
Content-Type: text/plain; charset="UTF-8"

Red Hats kernel has a flaw in overlayfs which can cause a kernel panic and
possibly memory corruption.

An attacker with local access can create a denial of service situation via
NULL pointer dereference in ovl_posix_acl_create function in
fs/overlayfs/dir.c. The ovl_create function can return a positive number
leading to a null pointer derference of path in may_open. This can allow
attackers with ability to create directories on overlayfs to crash the
kernel creating a Denial Of Service (DOS) and possibly other memory
corruption.

The memory corruption claim may be a bit of a stretch, but it could be
possible that an attacker could pre-groom the memory where the null pointer
dereference exists, but I couldn't get this to work in practice, YMMV.

This flaw likely only affects Red Hat Enterprise Linux 7 based products as
this issue was created by by human-error in the back-porting process.  It
is very unlikely that non Red Hat Enterprise Linux derived distributions
contain this flaw.

Thanks,

Wade Mealing
Red Hat Product Security


Red Hat bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2019-10140

Proposed patch:
https://bugzilla.redhat.com/attachment.cgi?id=1535840

--0000000000002f19b005901f9a12--

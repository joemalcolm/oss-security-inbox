X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["580" "Thursday" "14" "January" "2016" "09:28:09" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty11oyui5QSb_O5-86ajFxn-3uqhDiaLke8arTLRXvSM6Q@mail.gmail.com>" "28" "[oss-security] nodejs Buffer(number) is unsafe #4660" nil nil nil "1" "2016011416:28:09" "[oss-security] nodejs Buffer(number) is unsafe #4660" (number mark "U       kseifried@re Jan 14   28/580   " thread-indent "\"[oss-security] nodejs Buffer(number) is unsafe #4660\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29862 invoked by uid 550); 14 Jan 2016 16:28:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29836 invoked from network); 14 Jan 2016 16:28:21 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=H6p9i5denv3hScKzUEWzBBa+quynBF6Bau0pq/4hZRs=;
        b=k/Cl4AJiTAX8x3sCSu61F8xZ5eNWS1zBvJyiTEIJ5TRUbWzfrgqC+Ra4fTJ7jo/e4R
         71o0Hnj3XTYf2/1hgg8P/aDAN/IhVNBDuqHOOmkpfgsUBFxoEG7MHcSAT9OCP4A88Nz1
         dlFd9TELDU8rVE41iuLuWh+y5iqjMrYpqcnML+y3T76VrQgFYFP4keE9o6pDaN9Tn8Z1
         zi3qYmCTOS9b3SW8Sc1XYAiGTIPSW+YHQUAMnXSSTpRUKGT2m0T6DzgjT6seNMLbwG54
         EZyVjPwOFWuHlfzY1WpP8NTLiVYWXg0y/MKl6bRmBnHHOuFIGDMNisMeDoJm1rHjvQDm
         Nk9w==
X-Gm-Message-State: ALoCoQluWowSpPhfG7RBD9YsIW4eZi8PRm0i+6r14Bxv0OlYVH86i7oMwDwEuprRd8NmJ9SOXgmnR7uFtwBUMpP8/ZC2i8984pH/c2mdiBXz7hNjNdeY8Fk=
MIME-Version: 1.0
X-Received: by 10.13.206.2 with SMTP id q2mr3750616ywd.76.1452788889252; Thu,
 14 Jan 2016 08:28:09 -0800 (PST)
Date: Thu, 14 Jan 2016 09:28:09 -0700
Message-ID: <CANO=Ty11oyui5QSb_O5-86ajFxn-3uqhDiaLke8arTLRXvSM6Q@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
To: oss-security <oss-security@lists.openwall.com>, CVE ID Requests <cve-assign@mitre.org>
Content-Type: multipart/alternative; boundary=001a114da67eadcc6805294dc5f3
Subject: [oss-security] nodejs Buffer(number) is unsafe #4660

--001a114da67eadcc6805294dc5f3
Content-Type: text/plain; charset=UTF-8

From:

https://github.com/nodejs/node/issues/4660

tl;dr

This issue proposes:

Change new Buffer(number) to return safe, zeroed-out memory

Create a new API for creating uninitialized Buffers, Buffer.alloc(number)

====

it then goes into more detail at the URL. Can a CVE be assigned for this
please?

-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114da67eadcc6805294dc5f3--

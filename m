X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["488" "Sunday" "19" "April" "2015" "19:41:25" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150419174125.GB17666@eldamar.local>" "16" "Re: [oss-security] Remote file inclusion in django-markupfield" nil nil nil "4" "2015041917:41:25" "[oss-security] Remote file inclusion in django-markupfield" (number mark "        carnil@debia Apr 19   16/488   " thread-indent "\"Re: [oss-security] Remote file inclusion in django-markupfield\"\n") "<20150419163519.GA16209@leliel.pault.ag>" ("<20150419163519.GA16209@leliel.pault.ag>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30199 invoked by uid 550); 19 Apr 2015 17:41:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30181 invoked from network); 19 Apr 2015 17:41:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=wUD3O+5/SmSWawe8KjPHNKqqr/vVWz2iMyUYE17/ons=;
        b=UBeVFeNIRCwP6upt5yVgGtejNBP/YGO5Zlp46Kgw9OjFz21UlsSMrPqBweFiu9AsbS
         hGRobTxBcQJ4x+S6eCV0f0rYmQiUpTd56LM/cSiPhs42Q4QIcn2ZzLQvqCMvTpapilp/
         yppPC+LrEXGgFVNQobCBoMrZiXX51biH160ibY/a9TV+vdSjjeW20EpT2MpYZ4F4ClZq
         bt4JOK2uEiu0xPVQlmgfVQlHqWAiLDRiTSbMyXc/nM1UpuQJmqfd2evU7FiD9oVKCjqc
         QPhScBmYYJnG9mitMhP5WXNG/+hTTMR0F2cfoR9/SoWYvYNGhCKk968sjdmLH1SOed02
         c8QA==
X-Received: by 10.180.103.231 with SMTP id fz7mr18398305wib.35.1429465286960;
        Sun, 19 Apr 2015 10:41:26 -0700 (PDT)
Message-ID: <20150419174125.GB17666@eldamar.local>
References: <20150419163519.GA16209@leliel.pault.ag>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150419163519.GA16209@leliel.pault.ag>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Sun, 19 Apr 2015 19:41:25 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Remote file inclusion in django-markupfield
To: oss-security@lists.openwall.com

Hi,

On Sun, Apr 19, 2015 at 12:35:19PM -0400, Paul Tagliamonte wrote:
> Hey folks,
> 
> An arbitrary file inclusion bug was discovered in django-markupfield.
> 
> A CVE was issued from Debian, CVE-2015-0846, but the commit is public in
> the upstream repo, so this mail is to avoid deduplication of this issue.

For reference: This is the corresponding upstream commit:

https://github.com/jamesturk/django-markupfield/commit/b45734ea1d206abc1ed2a90bdc779708066d49f3

Regards,
Salvatore

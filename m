X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1298" "Sunday" "13" "September" "2015" "14:32:21" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150913123221.GA31867@eldamar.local>" "35" "Re: [oss-security] libxml2 issue: out-of-bounds memory access when parsing an unclosed HTML comment" nil nil nil "9" "2015091312:32:21" "[oss-security] libxml2 issue: out-of-bounds memory access when parsing an unclosed HTML comment" (number mark "        carnil@debia Sep 13   35/1298  " thread-indent "\"Re: [oss-security] libxml2 issue: out-of-bounds memory access when parsing an unclosed HTML comment\"\n") "<CALPTtNW6v=fPnjNj5ra9vGfqMFo4bUKyb+a+415MNjsR-5hKjQ@mail.gmail.com>" ("<CALPTtNW6v=fPnjNj5ra9vGfqMFo4bUKyb+a+415MNjsR-5hKjQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5696 invoked by uid 550); 13 Sep 2015 12:32:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5665 invoked from network); 13 Sep 2015 12:32:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=2k3IojreC1tm6nsUkGl1wa/j29DdX0SgIt4IgOi5gSs=;
        b=FkCbGbvy0s3w8svq29SNzDkXMj0V6cMDc4w7VUP+8xhs6NhMAtVbvXeMUwSeHp+lU8
         KjiPtnrNksmVfhAG1fvNJbr1t2w43UraqOOIfh4Q3dJDYLgtO55UUi4oDRRJG2izBaGF
         ch8LzYIWsGDVCq99gSNgXDn+wRwrHP8yA+0L+7Dxcf5tzVmUvrkJsSb6XafwGvgtoRov
         vk/a6tvYRT/UNE7PQ/IxC/jTM5fY5L0UIISS+8GvV5/k/GL3rAFxwwycfVknJfPxmW+U
         UKVE6bW+tqS0qhGfIvPgSXis5SIP1OcJcgLXje8WvqZwNQa6iKCg2uYDfE4ggZDU5uA0
         vDdA==
X-Received: by 10.194.19.169 with SMTP id g9mr16884247wje.64.1442147544280;
        Sun, 13 Sep 2015 05:32:24 -0700 (PDT)
Message-ID: <20150913123221.GA31867@eldamar.local>
References: <CALPTtNW6v=fPnjNj5ra9vGfqMFo4bUKyb+a+415MNjsR-5hKjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALPTtNW6v=fPnjNj5ra9vGfqMFo4bUKyb+a+415MNjsR-5hKjQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Assign a CVE Identifier <cve-assign@mitre.org>
Date: Sun, 13 Sep 2015 14:32:21 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] libxml2 issue: out-of-bounds memory access when
 parsing an unclosed HTML comment
To: oss-security@lists.openwall.com

Hi MITRE CVE assignment team,

On Sun, Apr 19, 2015 at 10:11:58AM -0700, Reed Loden wrote:
> (saw this randomly today on Twitter, so figured I'd send it on to make sure
> it gets a CVE and actually gets fixed)
> 
> https://hackerone.com/reports/57125#activity-384861
> 
> """
> This is an out-of-bounds memory access in libxml2. By entering a unclosed
> html comment such as <!-- the libxml2 parser didn't stop parsing at the end
> of the buffer, causing random memory to be included in the parsed comment
> that was returned to ruby. In Shopify, this caused ruby objects from
> previous http requests to be disclosed in the rendered page.
> 
> Link to the issue in libxml2's bugtracker:
> https://bugzilla.gnome.org/show_bug.cgi?id=746048
> 
> A patched version of nokogiri (which uses a embedded libxml2) is available
> here:
> https://github.com/Shopify/nokogiri/compare/1b1fcad8bd64ab70256666c38d2c998e86ade8c0...master
> 
> This bug is still not patched upstream, but both libxml2 and nokogiri
> developers are aware of the issue.
> """

TTBOMK, this and as well
http://www.openwall.com/lists/oss-security/2015/04/19/5 has a pending
CVE assignment request.

Can you assign CVEs for it, or does both actually do not warrant a CVE
id assignment?

Regards and thanks for all your work,
Salvatore

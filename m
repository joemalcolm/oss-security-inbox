X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2251" "Saturday" "2" "May" "2015" "08:54:10" "-0500" "James Cammarata" "jcammarata@ansible.com" "<CAMFyvFhfqkDU6ORLKdNM1n47W_c0OWG3JVssJVuF9QB6fZE5xg@mail.gmail.com>" "66" "[oss-security] Re: CVE Request / Ansible: insecure permission on a directory when using spacewalk inventory" nil nil nil "5" "2015050213:54:10" "[oss-security] Re: CVE Request / Ansible: insecure permission on a directory when using spacewalk inventory" (number mark "        jcammarata@a May  2   66/2251  " thread-indent "\"[oss-security] Re: CVE Request / Ansible: insecure permission on a directory when using spacewalk inventory\"\n") "<20150502035433.GA6750@sisay.ephaone.org>" ("<20150502035433.GA6750@sisay.ephaone.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17726 invoked by uid 550); 2 May 2015 14:35:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3288 invoked from network); 2 May 2015 13:54:21 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=c514lViKH3x1s4vXELjOSiyF5I/l+TajoLSOuME226k=;
        b=LJ/fI8fIYIYzBTO/K9OV9fpxm0zXzjpq6zChf5GVjbovUSTp4TQ8G81h/MCmHKe3av
         63j5JsCfacCzHyGHvNafHF8UQ+6kheEKudliey+UDl1FRLsCGlX+IgyLkl8VA7VIxaL0
         KKu8iyOjxHFbA03t4ckf+08D9X2cDVKHRNxdF/mFgsRHdn8+uBgJ3k6fN7moxzEhwPmH
         u6j7FFcuy6PL5Nj2qvn6Xt/OF8XqkaI+qViOI8Toih+bN/ZTvigM9JHNUwnOKLUkIVXt
         3/XBZhempYyANlhdByI7L4Osjmsb4N4FEHDKfyD6eKAj++vw2xZaPhpQk/SYEDp9E8Zp
         IOHQ==
X-Gm-Message-State: ALoCoQl8P1LngsAS3gxWUC9EWDRukLcfjjELzbxJsCbotMwTjkeqUBT2RUff8UUzB1BvgSNcNEGq
MIME-Version: 1.0
X-Received: by 10.112.199.1 with SMTP id jg1mr12416869lbc.59.1430574850487;
 Sat, 02 May 2015 06:54:10 -0700 (PDT)
In-Reply-To: <20150502035433.GA6750@sisay.ephaone.org>
References: <20150502035433.GA6750@sisay.ephaone.org>
Message-ID: <CAMFyvFhfqkDU6ORLKdNM1n47W_c0OWG3JVssJVuF9QB6fZE5xg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c33e2ec9cf06051519a969
Cc: oss-security@lists.openwall.com, security@ansible.com
Date: Sat, 2 May 2015 08:54:10 -0500
From: James Cammarata <jcammarata@ansible.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request / Ansible: insecure permission on a directory when
 using spacewalk inventory
To: Michael Scherer <misc@zarb.org>

--001a11c33e2ec9cf06051519a969
Content-Type: text/plain; charset=UTF-8

Hi Michael,

Thanks for finding this and fixing it, however we're not sure if this
requires a CVE? First of all, the impacted script is an optional inventory
script, which is not packaged with Ansible directly and must be downloaded
from the source repository. Second, the script (as you mentioned) creates
this directory typically in a relatively secure location, so the chances of
it being exposed are greatly lessened. Also, this is a relatively
under-utilized script, as not many people that we know of are getting host
information from Spacewalk using this script. Finally, the data contained
within that cache file is not very sensitive, and would typically only
contain the host IP information of systems from Spacewalk.

If a CVE is issued, we can mention it in the release, but we'd much rather
simply fix this ASAP and include it in the next major/minor release of
Ansible (2.0 and 1.9.2, respectively).

Thanks!


James Cammarata
Director, Ansible Core Engineering
github: jimi-c

On Fri, May 1, 2015 at 10:54 PM, Michael Scherer <misc@zarb.org> wrote:

> Hi,
>
> Could a CVE be assigned for this problem :
>
> Ansible inventory script for spacewalk create a file in the current
> directory with incorrect permission due to a error in a chmod
> specification.
>
>
> https://github.com/ansible/ansible/blob/devel/plugins/inventory/spacewalk.py#L63
>
> In python, os.chmod need to be in octal, and 2755 is not octal.
> So in the end, we manage to have permission like this :
>
> d-ws-w-rwt.
>
> And o+rw and u+s kinda sound bad. The directory is created in $PWD if
> I read the code right, so that's likely the homedir of 1 admin.
> However, that's executed locally, or from a bastion, so there
> isn't much venue to attack ( even if shared shell server still exist
> nowadays ),
> and this requires to use spacewalk.
>
> I pushed a commit there :
>
> https://github.com/mscherer/ansible/commit/251197f11de7c7a3c5d81141970dd8f2ef16c0ee
>
> I will wait for a CVE to be assigned before fixing the commit message, and
> push a
> PR ( cause i am quite bothered when I cannot find the CVE in the commit
> message)
>
> --
> Michael Scherer
>

--001a11c33e2ec9cf06051519a969--

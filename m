X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["352" "Monday" "10" "October" "2016" "10:12:21" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20161010081221.GA20544@lorien.valinor.li>" "16" "Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME" nil nil nil "10" "2016101008:12:21" "[oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME" (number mark "U       carnil@debia Oct 10   16/352   " thread-indent "\"Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME\"\n") "<3230301C09DEF9499B442BBE162C5E48ABE4A610@SESTOEX04.enea.se>" ("<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>" "<a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>" "<160916195601.AA66726.SM@caleb.ins.cwru.edu>" "<20160927205512.GA25156@jasmine>" "<5d16b9c9-b7e7-eb73-bf90-21162a84d791@case.edu>" "<3230301C09DEF9499B442BBE162C5E48ABE4A610@SESTOEX04.enea.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3835 invoked by uid 550); 10 Oct 2016 08:12:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3817 invoked from network); 10 Oct 2016 08:12:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7kCV2iZic4F2ERRRQCJmA8cxnfNN+KJqnx4p3RD4Bj0=;
        b=CVXdw+0uwTQPPlhxkz/uZqtTUAXZ6yQHKCAhRFBFol7OIf3AmhRYqlRXqI5LU2I4hf
         wrtlQCb9aXqv+T9BbfGGE6u5+RGs6zsXWVJxUTHKRXYq16Fdgyu0uCpzgUG4OQzMXxtK
         PE5lwHRX3Y37D4WYYikbAi6s9ZVc8HZt9vkFTokTwRea/TZuZQtONHejuIyGxeMMuQS0
         ciEjfX/Be/YwErHesQuUdit3Loo1lzpYJLgGa4I+Fi0bxMQ0jsj/fvDafrPn2lH2mTQ6
         RXOH7itj82RDjjEAz17bhpPzH6puO+I5PLW/8BNZnRCwW+SVK/1xyaM9EJj+wazTKg4W
         njkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=7kCV2iZic4F2ERRRQCJmA8cxnfNN+KJqnx4p3RD4Bj0=;
        b=kJjeMRxs2cDX1iO9QNavnBY7Eli+UFQNp40j6S5ta3ADZIWjTw/dpAz2oEejU6fuZl
         SCIs53tPpgm0wW9fB7ysrMLhGcvTYSa7z3E9ZlvATNjPBATxYAZnJAjLTJRjNA8RjDT1
         A8iIhz3pn5oG8CG/P83cC/M4GIhadMbDnrfF6SS7K7lYet+j+6XKeS6zPouzC3zhIVCL
         slfU602NdzqIsTfo3r4Sch2/onUPoRzLhQNMBhVVoKJrNeDblNEdtGX817iVG6jRQZuh
         qZ7oA/LkCfNXY5bUWE92PJj4N3X/q/0Fb7Xn6B3OnhLu5FeWCwbXCO+ZqI0jfYzsejCO
         oWJg==
X-Gm-Message-State: AA6/9RkW73SCrfKWbxJ/4XnCf4YhGPdzItqKLMdQni4Q6EQiVs8fz5AJu77CoTsS4XyY2g==
X-Received: by 10.36.73.23 with SMTP id z23mr9192976ita.32.1476087144375;
        Mon, 10 Oct 2016 01:12:24 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 10 Oct 2016 10:12:21 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Leo Famulari <leo@famulari.name>,
	"john.haxby@oracle.com" <john.haxby@oracle.com>
Message-ID: <20161010081221.GA20544@lorien.valinor.li>
References: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>
 <a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>
 <160916195601.AA66726.SM@caleb.ins.cwru.edu>
 <20160927205512.GA25156@jasmine>
 <5d16b9c9-b7e7-eb73-bf90-21162a84d791@case.edu>
 <3230301C09DEF9499B442BBE162C5E48ABE4A610@SESTOEX04.enea.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48ABE4A610@SESTOEX04.enea.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding
 $HOSTNAME

Hi,

On Mon, Oct 10, 2016 at 08:01:15AM +0000, Sona Sarmadi wrote:
> Hi Chet,
> 
> > > Thanks for the patch! Do you plan to add it to the bash-4.3-patches
> > > series [0]?
> > 
> > This went out as bash-4.3 patch 47.
> 
> Where can we find patch 47 for bash-4.3? 

See: https://ftp.gnu.org/pub/gnu/bash/bash-4.3-patches/bash43-047

Regards,
Salvatore

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["461" "Tuesday" "23" "February" "2016" "21:55:58" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<56CD45EE.1000901@oracle.com>" "13" "Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces" nil nil nil "2" "2016022405:55:58" "[oss-security] Access to /dev/pts devices via pt_chown and user namespaces" (number mark "U       alan.coopers Feb 23   13/461   " thread-indent "\"Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces\"\n") "<685fc01b-1728-6c0c-5193-a7fd0a73cfe3@halfdog.net>" ("<8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>" "<20160223161754.GA23263@openwall.com>" "<685fc01b-1728-6c0c-5193-a7fd0a73cfe3@halfdog.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17653 invoked by uid 550); 24 Feb 2016 05:56:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17632 invoked from network); 24 Feb 2016 05:56:12 -0000
Message-ID: <56CD45EE.1000901@oracle.com>
Date: Tue, 23 Feb 2016 21:55:58 -0800
From: Alan Coopersmith <alan.coopersmith@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net> <20160223161754.GA23263@openwall.com> <685fc01b-1728-6c0c-5193-a7fd0a73cfe3@halfdog.net>
In-Reply-To: <685fc01b-1728-6c0c-5193-a7fd0a73cfe3@halfdog.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Source-IP: userv0022.oracle.com [156.151.31.74]
Subject: Re: [oss-security] Access to /dev/pts devices via pt_chown and user
 namespaces

On 02/23/16 09:27 PM, halfdog wrote:
> That is nice, that this was done already for OWL. Is there a checklist
> or perhaps even a tool, that can be run, to detect, which weak
> programs, compile time settings or runtime settings might be applied
> to a given Linux setup?

Something like OpenSCAP perhaps?

https://www.open-scap.org/

-- 
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - http://blogs.oracle.com/alanc

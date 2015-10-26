X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["390" "Monday" "26" "October" "2015" "19:51:17" "+0100" "Florian Weimer" "fweimer@redhat.com" "<562E7625.1000306@redhat.com>" "15" "Re: [oss-security] CVE request - open-vm-tools using predictable filename in /tmp" nil nil nil "10" "2015102618:51:17" "[oss-security] CVE request - open-vm-tools using predictable filename in /tmp" (number mark "        fweimer@redh Oct 26   15/390   " thread-indent "\"Re: [oss-security] CVE request - open-vm-tools using predictable filename in /tmp\"\n") "<20151026182321.GA16580@sisay.ephaone.org>" ("<20151026182321.GA16580@sisay.ephaone.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16116 invoked by uid 550); 26 Oct 2015 18:51:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16092 invoked from network); 26 Oct 2015 18:51:33 -0000
References: <20151026182321.GA16580@sisay.ephaone.org>
Message-ID: <562E7625.1000306@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20151026182321.GA16580@sisay.ephaone.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Mon, 26 Oct 2015 19:51:17 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - open-vm-tools using predictable
 filename in /tmp
To: oss-security@lists.openwall.com

On 10/26/2015 07:23 PM, Michael Scherer wrote:

> It seems that vm-support, from open-vm-tools use /tmp to
> store output of diagnostic software.
> 
> See 
> https://github.com/vmware/open-vm-tools/blob/master/open-vm-tools/scripts/common/vm-support#L200
> 
> Can a CVE be assigned ?

I don't think this is a vulnerability anymore because runcmd prepends
$OUTPUT_DIR to the path.

Florian


X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["650" "Thursday" "17" "September" "2015" "16:12:29" "-0400" "Steve Dickson" "SteveD@redhat.com" "<55FB1EAD.4050600@RedHat.com>" "23" "[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind" nil nil nil "9" "2015091720:12:29" "[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind" (number mark "        SteveD@redha Sep 17   23/650   " thread-indent "\"[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind\"\n") "<20150917122333.GB23283@suse.de>" ("<20150917122333.GB23283@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1682 invoked by uid 550); 17 Sep 2015 20:12:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1655 invoked from network); 17 Sep 2015 20:12:42 -0000
References: <20150917122333.GB23283@suse.de>
Message-ID: <55FB1EAD.4050600@RedHat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20150917122333.GB23283@suse.de>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Thu, 17 Sep 2015 16:12:29 -0400
From: Steve Dickson <SteveD@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind
To: Marcus Meissner <meissner@suse.de>,
        OSS Security List <oss-security@lists.openwall.com>



On 09/17/2015 08:23 AM, Marcus Meissner wrote:
> Hi,
> 
> One of our customers saw rpcbind crashing on a remote security scan.
> Olaf Kirch identified and fixed the problem:
> 
> http://www.spinics.net/lists/linux-nfs/msg53045.html
> https://bugzilla.suse.com/show_bug.cgi?id=946204
> 
> It so far has not been integrated into rpcbind upstream.
> 
> This is a use-after-free, so at least remote denial of service.
> We have not researched further exploitability.
> 

In Olaf's patch there is a call to __rpc_set_netbuf() which is
not visible in the upstream libtirpc lib... Did  Olaf roll his own or
changed libtirpc to make it visible? 

steved.


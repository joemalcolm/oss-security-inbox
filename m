X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2039" "Wednesday" "16" "March" "2016" "10:17:35" "+0100" "=?UTF-8?B?TGHDq2wgQ2VsbGllcg==?=" "lael.cellier@laposte.net" "<c82384d8-0058-ae6b-81ee-b4b8d35ad22b@laposte.net>" "44" "[oss-security] Re: Exploitability of Git's CVE-2016-2315" "^Date:" nil nil "3" "2016031609:17:35" "[oss-security] Re: Exploitability of Git's CVE-2016-2315" (number mark "        lael.cellier Mar 16   44/2039  " thread-indent "\"[oss-security] Re: Exploitability of Git's CVE-2016-2315\"\n") "<6D90AAD6-C1B6-4E23-931D-370D5DBA56C6@sitpub.com>" ("<30B089CE-2A5B-4291-98D0-4350155A3ED9@sitpub.com>" "<6D90AAD6-C1B6-4E23-931D-370D5DBA56C6@sitpub.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18331 invoked by uid 550); 16 Mar 2016 13:01:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7465 invoked from network); 16 Mar 2016 09:17:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail1;
	t=1458119859; bh=8CNfiKa6NlD5R7ZC7rMNrYyIhUnO4+BnZ/aFjhin35Q=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=bIDxI8T+yOAXqaSWMGRuzmBCHiBXwLBS7ihoyQfFg5MzD4FHfkhHWS/lu9hQ5sq9C
	 ZP3lzbrxlXzQGsrhvobPiqlEC8xu35BEawvOfT4InKNRaLyre9PJGHj498uFYaPO8A
	 624BqR+euu5/eleafXxUu3RA8mRwD2fDt9smDU0nrDgiLDrctSdUBsha7ig2QkhgB3
	 UMThy3D3Zg0+VP9zTSmeYle+QgmrpVDt9v/8Zm5yacdQzMdHPKXJC1uh5kqUyyQSgW
	 9XhldmaqzyRKl/JaF4rmO8aSDJp0+6Hp4CFUU+MzCP3r+rRa58H284kCdIIAzybETm
	 379YivJ7Q9A4w==
References: <30B089CE-2A5B-4291-98D0-4350155A3ED9@sitpub.com>
 <6D90AAD6-C1B6-4E23-931D-370D5DBA56C6@sitpub.com>
X-Priority: 1 (Highest)
Message-ID: <c82384d8-0058-ae6b-81ee-b4b8d35ad22b@laposte.net>
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:48.0) Gecko/20100101
 Firefox/48.0 Thunderbird/48.0a1
MIME-Version: 1.0
In-Reply-To: <6D90AAD6-C1B6-4E23-931D-370D5DBA56C6@sitpub.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-VR-SrcIP: 86.71.97.142
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeekkedrtddvgddtudcutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhs
X-VR-Cause-3: ucdlqddutddtmdenucfjughrpefuvfhfrffhkffpffgfgggjtgfgsehtkeertddtfeejnecuhfhrohhm
X-VR-Cause-4: pefnrgotlhgpvegvlhhlihgvrhcuoehlrggvlhdrtggvlhhlihgvrheslhgrphhoshhtvgdrnhgvtheq
X-VR-Cause-5: necuffhomhgrihhnpegrmhgriihonhgrfihsrdgtohhmnecukfhppeekiedrjedurdeljedrudegvden
X-VR-Cause-6: ucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopegludelvddrudeikedruddrjegnpdhi
X-VR-Cause-7: nhgvthepkeeirdejuddrleejrddugedvpdhmrghilhhfrhhomheplhgrvghlrdgtvghllhhivghrsehl
X-VR-Cause-8: rghpohhsthgvrdhnvghtpdhrtghpthhtoheptgifihhllhhirghmshesshhithhpuhgsrdgtohhm
X-VR-AvState: No
X-VR-State: 0
Date: Wed, 16 Mar 2016 10:17:35 +0100
From: =?UTF-8?Q?La=c3=abl_Cellier?= <lael.cellier@laposte.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Exploitability of Git's CVE-2016-2315
To: Chris Williams <cwilliams@sitpub.com>, oss-security@lists.openwall.com


> Hi Laël,
>
> Congrats on the GitHub bounty for the Git bug. I have a quick question about CVE-2016-2315: is it feasibly exploitable? Do you have to push a very large repository with very long strings to overflow the signed integer in path_name()?
>
> Many thanks,
>
> C.
>
Yes, you have to create a repository path which is larger than 2³¹.

However, you have the control at what place the remote code execution 
should happen in the buffer. git objects are zlib compressed and git 
Servers tend to allow downloading over https or (even better ssh) which 
use zlib compression. This allow compress data twice (compressing a 
second time tend to be efficient in zlib if the data is well compressible).

If you find well zlib compressible data which you can combine with 
assembly, you’ll probably be able to reduce network data to 
200Mb. GitHub told they change their message if they could run the proof 
on 
https://github-enterprise.s3.amazonaws.com/hyperv/releases/github-enterprise-2.4.1.vhd 
or 
https://github-enterprise.s3.amazonaws.com/kvm/updates/github-enterprise-kvm-2.4.1.pkg 
or 
https://github-enterprise.s3.amazonaws.com/kvm/releases/github-enterprise-2.4.1.qcow2 
or 
https://github-enterprise.s3.amazonaws.com/esx/releases/github-enterprise-2.4.1.ova 
or 
https://github-enterprise.s3.amazonaws.com/xen/releases/github-enterprise-2.4.1.vhd

I used python gitdb to confirm the server side memory corruption. This 
allowed me to leverage the bug.
However, without a push command I can use, I had to build an ssh network 
payload from the generated packfile (the ꜱꜱʜ protocol is simpler than 
the ʜᴛᴛᴘꜱ one) that I could use with
ssh -C -o compressionlevel=9 git@github.com git-receive-pack the/repo.git

Creating an ʜᴛᴛᴘꜱ version should possible, however curl doesn’t know 
about ʜᴛᴛᴘ compression for uploading. So this require to pre compress 
the payload and trick ʜᴛᴛᴘ headers

The git:// protocol doesn’t support compression, so only the packfile 
compression remains.

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2507" "Wednesday" "6" "December" "2017" "18:21:04" "+0100" "Adam Maris" "amaris@redhat.com" "<1512580864.3139.2.camel@redhat.com>" "63" "Re: [oss-security] Info Leak in the Linux Kernel via Bluetooth" nil nil nil "12" "2017120617:21:04" "[oss-security] Info Leak in the Linux Kernel via Bluetooth" (number mark "U       amaris@redha Dec  6   63/2507  " thread-indent "\"Re: [oss-security] Info Leak in the Linux Kernel via Bluetooth\"\n") "<CA++9HO98n_G9zpBh2=wyj_T1osWECrah_vJWz3=TLf=hMS_5aA@mail.gmail.com>" ("<CA++9HO98n_G9zpBh2=wyj_T1osWECrah_vJWz3=TLf=hMS_5aA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22139 invoked by uid 550); 6 Dec 2017 17:21:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22121 invoked from network); 6 Dec 2017 17:21:19 -0000
Message-ID: <1512580864.3139.2.camel@redhat.com>
From: Adam Maris <amaris@redhat.com>
To: oss-security@lists.openwall.com
Date: Wed, 06 Dec 2017 18:21:04 +0100
In-Reply-To: <CA++9HO98n_G9zpBh2=wyj_T1osWECrah_vJWz3=TLf=hMS_5aA@mail.gmail.com>
References: 
	<CA++9HO98n_G9zpBh2=wyj_T1osWECrah_vJWz3=TLf=hMS_5aA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Wed, 06 Dec 2017 17:21:07 +0000 (UTC)
Subject: Re: [oss-security] Info Leak in the Linux Kernel via Bluetooth

On Wed, 2017-12-06 at 16:23 +0000, Armis Security wrote:
> Hello,
> 
> We are writing to disclose an information leak vulnerability in the
> Bluetooth stack of the Linux Kernel (BlueZ).
> This vulnerability has been disclosed to the Kernel's security team (
> security@kernel.org), and a patch for it is in stages of review.
> This patch is also attached here.
> 
> This vulnerability lies in the processing of incoming L2CAP commands
> - ConfigRequest, and ConfigResponse messages.
> This info leak is a result of uninitialized stack variables that may
> be returned to an attacker in their uninitialized state.
> By manipulating the code flows that precede the handling of these
> configuration messages, an attacker can also gain some control over
> which data will be held in the uninitialized stack variables.
> This can allow him to bypass KASLR, and stack canaries protection -
> as both pointers and stack canaries may be leaked in this manner.
> 
> Combining this vulnerability (for example) with the previously
> disclosed RCE vulnerability in L2CAP configuration parsing (CVE-2017-
> 1000251) may allow an attacker to exploit the RCE against kernels
> which were built with the above mitigations.
> 
> These are the specifics of this vulnerability:
> In the function l2cap_parse_conf_rsp and in the function
> l2cap_parse_conf_req the following variable is declared without
> initialization:
> 
> struct l2cap_conf_efs efs;
> 
> In addition, when parsing input configuration parameters in both of
> these functions, the switch case for handling EFS elements may skip
> the memcpy call that will write to the efs variable:
> 
> ...
> 		case L2CAP_CONF_EFS:
> 			if (olen == sizeof(efs))
> 				memcpy(&efs, (void *)val, olen);
> ...
> 
> The olen in the above if is attacker controlled, and regardless of
> that if, in both of these functions the efs variable would eventually
> be added to the outgoing configuration request that is being built:
> 
> l2cap_add_conf_opt(&ptr, L2CAP_CONF_EFS, sizeof(efs), (unsigned long)
> &efs);
> 
> So by sending a configuration request, or response, that contains an
> L2CAP_CONF_EFS element, but with an element length that is not
> sizeof(efs) - the memcpy to the uninitialized efs variable can be
> avoided,
> and the uninitialized variable would be returned to the attacker (16
> bytes).
> 

For reference, this issue was assigned CVE-2017-1000410.

Regards,

-- 
Adam Mariš, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2 

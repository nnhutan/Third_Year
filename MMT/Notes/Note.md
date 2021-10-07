# Chapter 2

## Tạo ứng dụng mạng

## Client-server mô hình

## Kiến trúc peer-peer

- các chân nằm rải rác trên các peer
- không luôn luôn trên server
- có thể scale tốt hơn client-server

## Qui trình giao tiếp

- mỗi tiến trình yêu cầu những dịch vụ
- server phải đáp ứng cho nhiều client trong cùng 1 ứng dụng web
- đơn vị kết nối thực sự là tiến trình
- trao đổi thông qua việc trao đổi thông điệp
- tiến trình client yêu cầu dịch vụ, có nhu cầu kết nối thì tạo đường kết nối rồi yêu cầu
- tiến trình server lắng nghe yêu cầu
- hai tiến trình kết nối trên 1 đường truyền

## Sockets

- trên 1 kết nối giữa hai tiến trình sẽ có 2 socket

## Giải quyết các quy trình

- để nhận tin nhắn, quá trình phải có mã định danh
- thiết bị chủ có địa chỉ IP 32-bit duy nhất
- số nhận dạng bao gồm cả địa chỉ IP và số cổng được liên kết với quá trình trên máy chủ lưu trữ.
- định danh của socket tương ứng với định danh của ứng dụng
- sừ dụng định danh cho host + 1 port(đặc trung cho ứng dung)

## xác định giao thức lớp ứng dụng

- Loại hình thông điệp được gửi, theo định dạng nào...
- Cú pháp của thông điệp
- Ngữ nghĩa của thông điệp
- Quy tắc về thời điểm và cách thức các quy trình gửi và trả lời tin nhắn
- Open protocols: giao thức mở, được định nghĩa trong RFC, mọi người đều có quyền truy cập vào định nghĩa giao thức, cho phép khả năng tương tác
- Proprietary protocols: giao thức độc quyền, mã nguồn đóng. VD: Skype

## Ứng dụng cần dịch vụ vận tải nào?

Thường cung cấp cho tằng bên dưới

- data integrity: toàn vẹn dữ liệu, dữ liệu được truyền tải như thế nào từ máy gởi đến máy nhận, dữ liệu sau khi được truyền và nhận sẽ không đổi là dữ liệu đáng tin cậy. không phải ứng dụng nào cũng yêu cầu dữ liệu đáng tin cậy
- throughput: thông lượng, đơn vị là số lượng bit trong 1 đơn vị thời gian, đại lượng đo được còn băng thông là đại lượng lý thuyết. elastic app là ứng dụng có thể co dãn linh động cái yêu cầu về thông lượng
- timing: thời gian truyền tải, độ trễ lớn hay thấp
- security: bảo mật

## Yêu cầu dịch vụ vận chuyển: các ứng dụng phổ biến

## Dịch vụ giao thức truyền tải Internet

Dịch vụ TCP: dịch vụ hướng kết nối, kết nối thành công thì mới có dữ liệu được truyền tải

- vận chuyển đáng tin cậy giữa quá trình gửi và nhận
- kiểm soát luồng: người gửi sẽ không áp đảo người nhận
- kiểm soát tắc nghẽn: tiết lưu người gửi khi mạng quá tải, máy nhận gửi một thông báo đến máy gửi
- không cung cấp: thời gian, đảm bảo thông lượng tối thiểu, bảo mật (TCP không cung cấp những cái này)
- hướng kết nối: yêu cầu thiết lập giữa các quy trình máy khách và máy chủ

Dịch vụ UDP: nhanh hơn TCP, chỉ là một cái dịch vụ đẩy dử liệu một cách nhanh nhất ra bên ngoài, cần thiết cho những ứng dụng không cần độ tin cậy...

- truyền dữ liệu không đáng tin cậy giữa quá trình gửi và nhận
- không cung cấp: độ tin cậy, kiểm soát luồng, kiểm soát tắc nghẽn, thời gian, thông lượng
  đảm bảo, bảo mật hoặc thiết lập kết nối.
- thường được sử dụng cho những phầm mềm hội thảo trực tuyến vì độ trễ thấp

## Bảo mật TCP

- liên quan đến máy gởi và máy nhận, không đảm bảo về thông lượng tối thiểu vì đi qua nhiều hạ tầng khác nhau
- không đảm bảo về mặt an ninh mạng
- để cải tiến thì tạo ra một lớp nằm trên là TSL, thay vì người phát triển phầm mềm gọi trực tiếp các hàm từ TCP mà gọi tới thư viện của TSL
- Xác thực server là nhiều nhất
- người dùng chỉ quan tâm đến TLS, TLS sẽ cung cấp những tính năng mà TCP không có, tạo ra 1 socket API để cho người dùng sử dụng thay vì sử dụng của TCP

## Web and HTTP

- trang web chứa những object, mối cái sẽ được lưu trữ trong những web server khác nhau
- trình duyệt sẽ yêu cầu server để lấy về những object. mỗi object có những url khác nhau

## HTTP overview: hypertext transfer protocol

- trao đổi giữa trình duyệt và server web sẽ tuân thủ theo 1 giao thức nào đó
- HTTP qui định là một trình duyệt phải kết nối đến server thành công thì server mới gửi...

HTTP sử dụng TCP: tầng ứng dụng sử dụng các dịch vụ của tầng vận chuyển

- trình duyệt khi khởi động sẽ khởi tạo 1 kết nối TCP
- phải gửi yêu cầu đến server với port 80
- kết nối thành công -> gửi yêu cầu
- đặc trưng là stateless: không lưu trạng thái của trình duyệt
- hai loại kế nối http: Non-persistent HTTP(chỉ gửi 1 object trên 1 kết nối), Persistent HTTP(chuyển nhiều Object trên 1 kết nối)

## Non-persistent HTTP: response time

2RTT + file transmission time

## Persistent HTTP

Giảm thiểu thời gian tạo kết nối

## HTTP request message

- có hai dạng của thông điệp HTTP: request và response

- với thông điệp yêu cầu:
  - dùng định dạng ASCII
  - dòng đầu tiên là request line
  - hàng tiếp theo là nhãn giá trị, header lines
  - cuối cùng là phần body
- những thông điệp yêu cầu khác: post, get, head và put
- với thông điệp đáp ứng, trả lời (response)
  - hàng đầu tiên là hàng trạng thái (status line)
  - tiếp theo là header lines
  - cuối cùng là data, request
  - status code: 200 OK, 301 Moved permanently, 400 bad request, 404 not found, 505 http version not supported

## Maintaining user/server state: cookies

Maintaining user/server state: cookies

- HTTP là không lưu trạng thái bởi vì nếu có lưu thì sẽ làm thời gian trễ tăng
- lưu lại 1 phần của header line, 1 số thông tin liên quan đến yêu cầu, có thể lưu lại trên 1 cái file trên 1 cái host của người dùng
  -Các trang web và trình duyệt của khách hàng sử dụng cookie để duy trì một số trạng thái giữa các giao dịch
  bốn thành phần: - dòng tiêu đề cookie của thông báo phản hồi HTTP - dòng tiêu đề cookie trong thông báo yêu cầu HTTP tiếp theo - tệp cookie được lưu giữ trên máy chủ của người dùng, được quản lý bởi trình duyệt của người dùng - cơ sở dữ liệu back-end tại trang Web

## Web caches (proxy servers)

Bộ nhớ đệm web (máy chủ proxy)

- giảm độ trễ giữa server tới object
- Mục tiêu: đáp ứng yêu cầu của khách hàng mà không liên quan đến máy chủ gốc
- người dùng định cấu hình trình duyệt để trỏ đến bộ đệm Web
- trình duyệt gửi tất cả các yêu cầu HTTP vào bộ nhớ cache
- if object in cache: cache trả về đối tượng cho máy khách
- đối tượng yêu cầu bộ đệm khác từ máy chủ gốc, đối tượng nhận được vào bộ đệm, sau đó trả về đối tượng cho máy khách
- giảm lượng traffc đưa vào trong mạng internet đến các server gốc
- Internet dày đặc các bộ nhớ đệm

- Bộ nhớ đệm web hoạt động như cả máy khách và máy chủ
  - máy chủ cho máy khách yêu cầu ban đầu
  - máy khách đến máy chủ gốc
- bộ đệm thường được cài đặt bởi ISP (trường đại học, công ty, ISP khu dân cư)

## Conditional GET

- Mục tiêu: không gửi đối tượng nếu bộ nhớ cache có phiên bản được lưu trong bộ nhớ cache cập nhật
  - không có độ trễ truyền đối tượng
  - sử dụng liên kết thấp hơn
- cache: chỉ định ngày của bản sao được lưu trong bộ nhớ cache trong yêu cầu HTTP/ Nếu-sửa đổi-kể từ: <ngày>
- máy chủ: phản hồi không chứa đối tượng nếu bản sao được lưu trong bộ nhớ cache được cập nhật: HTTP / 1.0 304 Không được sửa đổi

## HTTP/2

- Mục tiêu chính: giảm độ trễ trong các yêu cầu HTTP nhiều đối tượng

## email

- kiến trúc client server
- đòi hỏi đáng tin cậy => sử dụng dịch vụ truyền tải đáng tin cậy

## Mail server

- mailbox
- message queue
- SMTP protocol

## E-mail: the RFC

## HTTP & SMTP

- slide 55

## DNS: ứng dụng phân giải tên miền

- không tương tác trực tiếp tới người dùng
- sử dụng một cơ sở dữ liệu phân tán, nằm ở nhiều nơi nhiều máy trên toàn thế giới
- chạy trên 1 host => là một phần chức năng của mạng core, có một độ phức tạp nhất định
- DNS service: slide 60

## DNS: a distributed, hierarchical database

Root->Top level domain -> authoritative

- việc truy xuất vào db sẽ dễ dàng hơn
- trong thực tế thì root rất ít khi được truy cập đến, chỉ khi không đạt được, ko truy vấn được thì root là lựa chọn cuối cùng
- có 13 root service được đặt trên toàn thế giới

## DNS records

- cơ sở dữ liệu phân tán lưu trữ các bản ghi tài nguyên

## DNS protocol messages

- thông điệp query và reply có cùng định dạng
- một thông điệp có nhiều truy vấn, phản hồi

## Thêm một records vào DNS

## DNS security

- DDoS attacks ít có khả năng xảy ra trên root
- DDoS attacks: TLD server thì khả năng tấn công cao hơn, ít có khả năng phân biệt được yêu cầu truy vấn tốt hay xấu
- Redirect attacks:
- Exploit DNS for DDoS: gởi các thông tin giả đến server

## P2P applications: ứng dụng dạng peer to peer

- mỗi 1 đối tượng tham gia gọi là 1 peer
- phổ biến với file sharing
- không nhất thiết phải luôn luôn ở trên server
- tùy ý giao tiếp trực tiếp
- lợi thế là tự scale khi số lượng peer tăng lên
- vừa yêu cầu, vừa cung cấp

## P2P file distribution: BitTorrent

- mạng lưới các peer
- một peer mới khi mới kết nối vào mạng lưới thì phải lấy danh sách các peer trong mạng lưới và sau đó kết nối

## video streaming and cdns: context

## Content distribution networks (CDNs)

- đảm bảo chuyển nội dung đến người dùng khi số lượng người dùng tăng lên
- lựa chọn cho một mega server là không khả thi
- tạo ra nhiều bản sao ở nhiều nút cdn phân tán.

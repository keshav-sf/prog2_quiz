import "package:flutter/material.dart";

class ResultData extends StatelessWidget {
  const ResultData(this.resultData, {super.key});

  final List<Map<String, Object>> resultData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 410,
      child: SingleChildScrollView(
        child: Column(
          children: resultData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(161, 255, 255, 255),
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child:
                          Text(((data['question_index'] as int) + 1).toString(),
                              style: const TextStyle(
                                color: Color.fromARGB(255, 60, 5, 124),
                                fontWeight: FontWeight.w900,
                              )),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data['question'] as String,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        Text(
                          data['correct_answer'] as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 195, 143, 250),
                          ),
                        ),
                        Text(
                          data['user_answer'] as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 225, 200, 252),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

import 'dart:async';

class PomodoroTimer {
    final int workingTime;
    final int breakTime;
    int cycle = 0;
    int specificCycle = 4;

    PomodoroTimer(this.workingTime, this.breakTime);

    void start() {
        runCycle();
    }

    void runCycle() {
        this.cycle++;
        if (this.cycle % this.specificCycle != 0) {
            timeChecker(this.workingTime, this.breakTime);
        } else {
            timeChecker(25, 10);
        }
    }

    void timeChecker(int workTime, int breakTime) {
        var workDuration = Duration(minutes: workTime);
        var breakDuration = Duration(minutes: breakTime);

        // ONLY FOR TEST
        // var workDuration = Duration(seconds: 3);
        // var breakDuration = Duration(seconds: 3);

        print('flutter: $cycle회차 Timer를 시작합니다.');
        Timer.periodic(const Duration(seconds: 1), (timer) {
            if (timer.tick > workDuration.inSeconds) {
                timer.cancel();
                print('flutter: 작업 시간이 종료되었습니다. 휴식 시간을 시작합니다.');
                Timer.periodic(const Duration(seconds: 1), (timer) {
                    if (timer.tick > breakDuration.inSeconds) {
                        timer.cancel();
                        print('flutter: 휴식 시간이 종료되었습니다.');
                        runCycle();
                    } else {
                        int remainingSeconds = breakDuration.inSeconds - timer.tick;
                        int minutes = remainingSeconds ~/ 60;
                        int seconds = remainingSeconds % 60;
                        print('flutter: $minutes:$seconds');
                    }
                });
            } else {
                int remainingSeconds = workDuration.inSeconds - timer.tick;
                int minutes = remainingSeconds ~/ 60;
                int seconds = remainingSeconds % 60;
                print('flutter: $minutes:$seconds');
            }
        });
    }
}

void main() {
    PomodoroTimer timer = new PomodoroTimer(25, 5);
    timer.start();
}